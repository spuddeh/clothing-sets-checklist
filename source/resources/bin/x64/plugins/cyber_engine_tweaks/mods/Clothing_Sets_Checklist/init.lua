-- ======================================================================================
-- Mod Name: Clothing Sets Checklist
-- Author: Spuddeh
-- Description: Tracks Role Sets clothing items using Shared UI and Persistent Settings.
-- Mod Version: 1.2.3
--=======================================================================================

local ClothingSetsDB = require("db")
local GameSession = require("Modules/GameSession")
local ChecklistUI = require("Modules/ChecklistUI")
local SettingsUI = require("Modules/SettingsUI")
local Utils = require("Modules/Utils")
local Automation = require("Modules/Automation")
local Cron = require("Modules/Cron")

-- ### MOD STATE ###

-- Persistent State Container (Session Progress)
local sessionState = {
    progress = {}
}

-- Global Settings (Config.json)
local settings = {
    lazy_mode = false,
    show_baseid = false
}

-- Init Utils
local isOverlayOpen = false
local isSessionActive = false
-- Runtime State (Non-persistent)
local runtimeState = {
    current_mappin = nil
}
local config_file = "config.json"

-- ### CONFIG IO ###

local function SaveConfig()
    local file = io.open(config_file, "w")
    if file then
        file:write(json.encode(settings))
        file:close()
    end
end

local function LoadConfig()
    local file = io.open(config_file, "r")
    if file then
        local content = file:read("*a")
        file:close()
        if content then
            local loaded = json.decode(content)
            for k, v in pairs(loaded) do
                settings[k] = v
            end
        end
    end
    -- Enforce Dev Mode Off for this mod -> Removed to support console toggle
    -- settings.dev_mode_enabled = false
end

-- ### HELPERS ###

local function InitializeProgress()
    local new_progress = {}
    for _, cat in ipairs(ClothingSetsDB) do
        for _, entry in ipairs(cat.entries) do
            new_progress[entry.id] = false
        end
    end
    return new_progress
end

local function CheckItemOwned(baseID)
    local ts = Game.GetTransactionSystem()
    local player = GetPlayer()
    if not player or not ts then return false end

    -- ensure "Items." prefix is handled
    local finalID = baseID
    if not string.find(baseID, "Items%.") then
        finalID = "Items." .. baseID
    end

    -- 2. Check Wardrobe (Transmog)
    local tdbid = TweakDBID.new(finalID)
    local wardrobeSystem = Game.GetWardrobeSystem()
    if wardrobeSystem then
        local storedID = wardrobeSystem:GetStoredItemID(tdbid)
        if storedID and ItemID.IsValid(storedID) then
            return true
        end
    end

    return false
end

local function ScanAllItems()
    local found_new = false
    for _, cat in ipairs(ClothingSetsDB) do
        for _, entry in ipairs(cat.entries) do
            -- Optimization: Only check if not already marked as collected
            if not sessionState.progress[entry.id] and entry.baseID then
                if CheckItemOwned(entry.baseID) then
                    if Automation.SetItemStatus then
                        Automation.SetItemStatus(entry.id, true)
                    else
                        sessionState.progress[entry.id] = true
                    end
                    Utils.Log("Found item: " .. entry.name)
                    found_new = true
                end
            end
        end
    end
end

-- ### CALLBACKS ###

local uiCallbacks = {
    -- Auto-only: Manual toggling disabled
    -- onToggle = function(id, value)
    --     modState.progress[id] = value
    -- end,

    onAction = function(action, entry)
        local player = GetPlayer()

        if action == "teleport" then
            if entry.coords then
                local pos = ToVector4 { x = entry.coords.x, y = entry.coords.y, z = entry.coords.z, w = 1 }
                local rot = ToEulerAngles { roll = 0, pitch = 0, yaw = entry.coords.yaw or 0 }
                Game.GetTeleportationFacility():Teleport(player, pos, rot)
            end
        elseif action == "mappin" then
            if runtimeState.current_mappin then
                Game.GetMappinSystem():UnregisterMappin(runtimeState.current_mappin)
                runtimeState.current_mappin = nil
            end
            local mappinData = MappinData.new()
            mappinData.mappinType = TweakDBID.new('Mappins.DefaultStaticMappin')
            mappinData.variant = gamedataMappinVariant.CustomPositionVariant
            mappinData.visibleThroughWalls = true
            local pin_pos = Vector4.new(entry.coords.x, entry.coords.y, entry.coords.z, 0)
            runtimeState.current_mappin = Game.GetMappinSystem():RegisterMappin(mappinData, pin_pos)
        end
    end,

    drawCustomActions = function(entry)
        -- Custom "Give Item" button
        if ImGui.Button(IconGlyphs.Gift .. " Give Item") then
            local player = GetPlayer()
            if player and entry.baseID then
                -- Ensure "Items." prefix for TweakDB path
                local finalID = entry.baseID
                if not string.find(finalID, "Items%.") then
                    finalID = "Items." .. finalID
                end

                -- Use Game.AddToInventory for save-persistent item granting
                -- (TransactionSystem:GiveItem creates transient items that vanish on reload)
                Game.AddToInventory(finalID, 1)
                Utils.Notify("Item Added: " .. entry.name)
                Automation.SetItemStatus(entry.id, true)
            end
        end
        if ImGui.IsItemHovered() then
            ImGui.SetTooltip("Adds the item directly to your inventory.")
        end
    end,

    drawSettings = function()
        -- Delegate to SettingsUI with Runtime State
        SettingsUI.Draw(settings, runtimeState, {
            onSettingChanged = function()
                Automation.UpdateState()
                SaveConfig()
            end,
            drawCustomSettings = function()
                local current_baseid = settings.show_baseid
                local new_baseid = ImGui.Checkbox("Show Base ID", current_baseid)
                if new_baseid ~= current_baseid then
                    settings.show_baseid = new_baseid
                    SaveConfig()
                end
                ImGui.TextWrapped("Displays the internal Item ID in the details view.")
                ImGui.Spacing()
            end
        })
    end
}

-- ### INIT ###

registerForEvent("onInit", function()
    LoadConfig()
    GameSession.StoreInDir('sessions')
    -- Persist session state (progress only)
    GameSession.Persist(sessionState)

    GameSession.OnLoad(function()
        -- Initialize clean default progress
        local cleanProgress = InitializeProgress()

        -- Ensure structure exists (if loading old save)
        if not sessionState.progress then sessionState.progress = {} end

        -- Merge Progress
        for id, _ in pairs(cleanProgress) do
            if sessionState.progress[id] == nil then
                sessionState.progress[id] = false
            end
        end
    end)

    -- Enforce defaults for new settings if missing
    if settings.automation_enabled == nil then settings.automation_enabled = true end
    if not settings.scanner_interval then settings.scanner_interval = 5.0 end
    if not settings.scanner_radius then settings.scanner_radius = 50.0 end

    GameSession.OnStart(function()
        isSessionActive = true

        -- Initialize Automation
        Automation.Init(sessionState, uiCallbacks, false, settings)
        Automation.SetupObservers()

        -- Auto-Scan logic moved here for performance (after load complete)
        ScanAllItems()
    end)

    -- INVENTORY LISTENER: Immediate Notification on Loot
    -- Switching to UIInventoryScriptableSystem as it reliably fires for all loot sources
    Observe("UIInventoryScriptableSystem", "OnInventoryItemAdded", function(_, request)
        if not isSessionActive then return end

        local itemID = request.itemID
        local tdbid = ItemID.GetTDBID(itemID)

        if not tdbid then return end

        local idString = tostring(tdbid)

        -- DEBUG LOGGING
        if settings.dev_mode_enabled then
            Utils.Log("[Loot] Item Added: " .. idString, Utils.LogLevel.Debug)
        end

        -- Check if this item is in our checklist and uncollected
        for _, cat in ipairs(ClothingSetsDB) do
            for _, entry in ipairs(cat.entries) do
                if not sessionState.progress[entry.id] and entry.baseID then
                    local fullID = entry.baseID
                    if not string.find(fullID, "Items%.") then fullID = "Items." .. fullID end

                    local entryTDBID = TweakDBID.new(fullID)

                    -- Direct TweakDBID comparison (handles hashes internally)
                    if tdbid == entryTDBID then
                        if Automation.SetItemStatus then
                            Automation.SetItemStatus(entry.id, true)
                        else
                            sessionState.progress[entry.id] = true
                        end
                        Utils.Notify("Clothing Item Looted: " .. entry.name)

                        -- Log Success for easier debugging
                        if settings.dev_mode_enabled then
                            Utils.Log("[Loot] MATCH FOUND: " .. entry.name, Utils.LogLevel.Debug)
                        end
                    end
                end
            end
        end
    end)

    GameSession.OnEnd(function()
        isSessionActive = false
    end)
end)

registerForEvent("onUpdate", function(deltaTime)
    Cron.Update(deltaTime)
end)

registerForEvent("onOverlayOpen", function()
    isOverlayOpen = true
    if isSessionActive then
        ScanAllItems()
    end
end)
registerForEvent("onOverlayClose", function() isOverlayOpen = false end)

local checklist_mode = "automatic"

registerForEvent("onDraw", function()
    if isOverlayOpen then
        if isSessionActive then
            ChecklistUI.Draw("Clothing Sets Checklist", true, ClothingSetsDB, sessionState.progress, settings,
                uiCallbacks, checklist_mode)
        else
            ChecklistUI.DrawSplashScreen("Clothing Sets Checklist")
        end
    end
end)

-- Console Command to Toggle Debug Mode
local function ToggleDebug()
    settings.dev_mode_enabled = not settings.dev_mode_enabled
    if settings.dev_mode_enabled then
        Utils.Log("Debug Mode ENABLED (Reload mod for full effect on INIT logic).")
    else
        Utils.Log("Debug Mode DISABLED.")
    end
    -- Re-init automation to update debug state
    Automation.Init(sessionState, uiCallbacks, settings.dev_mode_enabled, settings)
    SaveConfig()
end

return {
    ToggleDebug = ToggleDebug
}
