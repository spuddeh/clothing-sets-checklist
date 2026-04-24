-- ======================================================================================
-- Mod Name: Clothing Sets Checklist
-- Author: Spuddeh
-- Description: Tracks Role Sets clothing items using Shared UI and Persistent Settings.
-- Mod Version: 1.3.0
-- ======================================================================================

local ClothingSetsDB = require("db")
local GameSession    = require("Modules/GameSession")
local GameUI         = require("Modules/GameUI")
local ChecklistUI    = require("Modules/ChecklistUI")
local SettingsUI     = require("Modules/SettingsUI")
local Utils          = require("Modules/Utils")
Utils.LogPrefix = IconGlyphs.TshirtCrew .. " [Clothing Sets Checklist] "
local Automation     = require("Modules/Automation")

-- ### MOD STATE ###

local sessionState = {
    progress = {}
}

local settings = {
    lazy_mode  = false,
    show_baseid = false
}

local isOverlayOpen   = false
local isSessionActive = false
local runtimeState    = { current_mappin = nil }
local config_file     = "config.json"

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
    if settings.automation_enabled == nil then settings.automation_enabled = true end
    if not settings.scanner_radius then settings.scanner_radius = 50.0 end
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
    local player = GetPlayer()
    if not player then return false end

    local finalID = baseID
    if not string.find(baseID, "Items%.") then
        finalID = "Items." .. baseID
    end

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
    for _, cat in ipairs(ClothingSetsDB) do
        for _, entry in ipairs(cat.entries) do
            if not sessionState.progress[entry.id] and entry.baseID then
                if CheckItemOwned(entry.baseID) then
                    Automation.SetItemStatus(entry.id, true)
                    Utils.Log("Found item: " .. entry.name)
                end
            end
        end
    end
end

-- ### CALLBACKS ###

local uiCallbacks = {
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
        if ImGui.Button(IconGlyphs.Gift .. " Give Item") then
            local player = GetPlayer()
            if player and entry.baseID then
                local finalID = entry.baseID
                if not string.find(finalID, "Items%.") then
                    finalID = "Items." .. finalID
                end
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

-- ### EVENTS ###

registerForEvent("onInit", function()
    local Engine = GetMod("0-Engine")
    if not Engine then
        spdlog.error("[CSC] FATAL: 0-Engine not found. Install from Nexus (ID 27967).")
        return
    end
    local Mod = Engine.Register("Clothing_Sets_Checklist")

    LoadConfig()
    Utils.SetDebugMode(settings.dev_mode_enabled)

    GameSession.StoreInDir('sessions')
    GameSession.Persist(sessionState)

    GameSession.OnLoad(function()
        local cleanProgress = InitializeProgress()
        if not sessionState.progress then sessionState.progress = {} end
        for id, _ in pairs(cleanProgress) do
            if sessionState.progress[id] == nil then
                sessionState.progress[id] = false
            end
        end
    end)

    GameSession.OnSave(function()
        SaveConfig()
    end)

    -- 0-Engine: combat and cutscene suppression
    Engine.Subscribe("CombatStateChanged", function(inCombat)
        Automation.SetInCombat(inCombat)
    end)
    Engine.Subscribe("SceneTierChanged", function(tier)
        Automation.SetInCutscene(tier > 1)
    end)

    -- GameUI: handles loading screens and menus with correct timing.
    GameUI.OnLoadingStart(function() Automation.SetMenuPaused(true) end)
    GameUI.OnLoadingFinish(function() Automation.SetMenuPaused(false) end)
    GameUI.OnMenuOpen(function() Automation.SetMenuPaused(true) end)
    GameUI.OnMenuClose(function() Automation.SetMenuPaused(false) end)

    -- INVENTORY LISTENER: O(1) lookup via ChecklistCore's pre-built TDBID table
    Observe("UIInventoryScriptableSystem", "OnInventoryItemAdded", function(_, request)
        if not isSessionActive then return end
        local tdbid = ItemID.GetTDBID(request.itemID)
        if not tdbid then return end
        if settings.dev_mode_enabled then
            Utils.Log("[Loot] Item Added: " .. tostring(tdbid), Utils.LogLevel.Debug)
        end
        Automation.OnItemLooted(tdbid, "Clothing Item Looted")
    end)

    -- PlayerInvalidated: resource cleanup only. Still fires on some vendor opens.
    Engine.Subscribe("PlayerInvalidated", function()
        Utils.Log("Player Invalidated. Cleaning up SpatialSet.")
        Automation.UnregisterItemSet()
    end)

    GameSession.OnEnd(function()
        Utils.Log("Game Session Ended.")
        isSessionActive = false
    end)

    Mod.WhenReady(function(_)
        Utils.Log("Player Ready. Initializing Automation.")
        isSessionActive = true

        Automation.Init(sessionState, uiCallbacks, settings.dev_mode_enabled, settings)
        Automation.UpdateState()  -- register SpatialSet and zones (suppressed if loading)
        if not GameSession.IsPaused() then
            ScanAllItems()
            Automation.Scan()
        end
    end, nil, 2)

    Utils.Log("Loaded (Wait for Player Ready).")
end)

registerForEvent("onOverlayOpen", function()
    isOverlayOpen = true
    if isSessionActive then
        ScanAllItems()
        Automation.Scan()
    end
end)

registerForEvent("onOverlayClose", function()
    isOverlayOpen = false
end)

registerForEvent("onDraw", function()
    if isOverlayOpen then
        if isSessionActive then
            ChecklistUI.Draw("Clothing Sets Checklist", true, ClothingSetsDB, sessionState.progress, settings,
                uiCallbacks, "automatic")
        else
            ChecklistUI.DrawSplashScreen("Clothing Sets Checklist")
        end
    end
end)

local function ToggleDebug()
    settings.dev_mode_enabled = not settings.dev_mode_enabled
    Utils.SetDebugMode(settings.dev_mode_enabled)
    Automation.Init(sessionState, uiCallbacks, settings.dev_mode_enabled, settings)
    if settings.dev_mode_enabled then
        Utils.Log("Debug Mode ENABLED.")
    else
        Utils.Log("Debug Mode DISABLED.")
    end
    SaveConfig()
end

return {
    ToggleDebug = ToggleDebug
}
