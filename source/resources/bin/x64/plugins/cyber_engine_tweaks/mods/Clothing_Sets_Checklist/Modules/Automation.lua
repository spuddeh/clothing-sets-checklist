-- ======================================================================================
-- Mod Name: Clothing Sets Checklist
-- Author: Spuddeh
-- Description: Handles Passive (Proximity) detection of Clothing Items.
-- Mod Version: 1.2.3
-- ======================================================================================

local Automation = {}
local Utils = require("Modules/Utils")
local Cron = require("Modules/Cron")
local GameSession = require("Modules/GameSession")
local Ref = require("Modules/Ref")
local DB = require("db")

-- State References (injected via Init)
local _cronTimerId = nil
local _sessionState = nil
local _callbacks = nil
local _isDebug = false
local _settings = nil

-- ### OBSERVERS & PROXIMITY SCANNER ###

local _lastScanTime = 0
local _wasPaused = true
local _unpauseTime = 0
local _notified_cache = {} -- Cache for notifications to avoid spam
local _createdMappins = {} -- Cache for created Mappins [entryID] = mappinID

function Automation.Init(sessionState, callbacks, debugMode, settings)
    _sessionState = sessionState
    _callbacks = callbacks
    _isDebug = debugMode or false
    _settings = settings

    -- Initial State Sync
    Automation.UpdateState()

    Utils.Log("Automation Initialized (Proximity Only).")
end

function Automation.SetupObservers()
    -- Observers are setup once. Cron is managed by Start/Stop logic.
end

function Automation.StartScanner()
    if _cronTimerId then return end -- Already running

    -- Start Passive Proximity Scanner (Cron Loop 1.0s)
    _unpauseTime = os.clock() -- Initialize Grace Period on Start
    _cronTimerId = Cron.Every(1.0, function()
        -- Check Delta Time
        local currentTime = os.clock()
        local interval = _settings and _settings.scanner_interval or 5.0
        if (currentTime - _lastScanTime) >= interval then
            Automation.ProximityScan()
            _lastScanTime = currentTime
        end
    end)
end

function Automation.StopScanner()
    if _cronTimerId then
        Cron.Halt(_cronTimerId)
        _cronTimerId = nil
    end
end

-- Check if all items in DB are collected (Returns: bool, collectedCount, totalCount)
function Automation.CheckAllCollected()
    local total = 0
    local collected = 0

    for _, cat in ipairs(DB) do
        for _, entry in ipairs(cat.entries) do
            total = total + 1
            if _sessionState and _sessionState.progress and _sessionState.progress[entry.id] then
                collected = collected + 1
            end
        end
    end

    if collected >= total and total > 0 then
        return true, collected, total
    end
    return false, collected, total
end

function Automation.SetItemStatus(id, collected)
    if not _sessionState or not _sessionState.progress then return end

    _sessionState.progress[id] = collected
    -- Save is handled by GameSession monitoring the table changes

    -- Check completion and stop scanner if needed
    local isComplete, count, total = Automation.CheckAllCollected()

    if _isDebug then
        Utils.Log(string.format("[SetItemStatus] Item: %s | Status: %s | Progress: %d/%d | Complete: %s",
            id, tostring(collected), count, total, tostring(isComplete)), Utils.LogLevel.Debug)
    end

    if isComplete then
        Automation.StopScanner()
    end
end

function Automation.UpdateState()
    if _settings and _settings.automation_enabled then
        local isComplete = Automation.CheckAllCollected()
        if isComplete then
            Automation.StopScanner()
        else
            Automation.StartScanner()
        end
    else
        Automation.StopScanner()
    end
end

local function IsCollected(id)
    if _sessionState and _sessionState.progress then
        return _sessionState.progress[id] == true
    end
    return false
end

--- Periodic check for player proximity
local _entityCache = {} -- Cache for weak entity refs
function Automation.ProximityScan()
    local player = Game.GetPlayer()
    if not player then return end

    -- PAUSE CHECK: Suspend automation during Menus/Loading
    local isPaused = GameSession.IsPaused()

    if isPaused then
        _wasPaused = true
        return
    end

    -- Just unpaused?
    if _wasPaused then
        _unpauseTime = os.clock()
        _wasPaused = false
    end

    -- Grace Period Check (3.0s for Fade-In)
    if (os.clock() - _unpauseTime) < 3.0 then
        return
    end

    if _isDebug then
        local status = _settings and
            ("Enabled: " .. tostring(_settings.automation_enabled) .. ", Radius: " .. tostring(_settings.scanner_radius)) or
            "No Settings"
        Utils.Log("[Proximity] Scanning... " .. status, Utils.LogLevel.Debug)
    end

    local playerPos = player:GetWorldPosition()
    local radius = _settings and _settings.scanner_radius or 50.0
    local radiusSq = radius * radius
    local detectionDistSq = 25.0 * 25.0 -- 25m Range

    -- Iterate through DB to find uncollected items with coords
    for _, cat in ipairs(DB) do
        for _, entry in ipairs(cat.entries) do
            if not IsCollected(entry.id) and entry.coords and entry.coords.x ~= 0 then
                -- Check Distance
                local dx = playerPos.x - entry.coords.x
                local dy = playerPos.y - entry.coords.y
                local dz = playerPos.z - entry.coords.z
                local distSq = (dx * dx) + (dy * dy) + (dz * dz)

                -- Check Quest Fact (Default true if not present)
                local canShow = true
                if entry.quest_fact and entry.quest_fact ~= "" then
                    local val = Game.GetQuestsSystem():GetFactStr(entry.quest_fact)
                    if val == 0 then
                        canShow = false
                    end
                end

                if distSq < radiusSq and canShow then
                    -- 1. Create Mappin if not exists
                    if not _createdMappins[entry.id] then
                        Automation.CreateMappin(entry)
                    end

                    -- Notification (First time only)
                    if not _notified_cache[entry.id] then
                        Utils.Notify("Clothing Set Item nearby: " .. entry.name)
                        _notified_cache[entry.id] = true
                    end

                    -- 2. Check Logic (Auto-Resolve/Loot Detection)
                    -- Only possible if container_id is present
                    Automation.CheckProximityTarget(entry, distSq < detectionDistSq)
                else
                    -- Cleanup Mappin if out of range or condition not met
                    if _createdMappins[entry.id] then
                        Automation.RemoveMappin(entry.id)
                    end
                    -- Reset notification state
                    if _notified_cache[entry.id] then
                        _notified_cache[entry.id] = nil
                    end
                end
            elseif IsCollected(entry.id) then
                -- Cleanup if collected
                if _createdMappins[entry.id] then
                    Automation.RemoveMappin(entry.id)
                end
            end
        end
    end
end

function Automation.CheckProximityTarget(entry, isVeryClose)
    if not entry.container_id then return end

    -- Try to resolve the container/entity
    local entity = nil

    -- 1. Try Weak Cache
    if _entityCache[entry.id] and not Ref.IsExpired(_entityCache[entry.id]) then
        entity = _entityCache[entry.id]
    else
        -- 2. Try FindEntityByID (if container_id exists)
        local success, hashVal = pcall(loadstring("return " .. tostring(entry.container_id)))
        if success and hashVal then
            local tid = entEntityID.new()
            tid.hash = hashVal
            entity = Game.FindEntityByID(tid)
            if entity then
                _entityCache[entry.id] = Ref.Weak(entity)
            end
        end
    end

    -- CSC does NOT use Auto-Resolve logic.
    -- Collection is handled strictly by the Inventory Listener in init.lua.
    -- This scanner is purely for Mappin/Notification updates (handled in Scan loop).
end

function Automation.CreateMappin(entry)
    local mappinData = MappinData.new()
    mappinData.mappinType = TweakDBID.new('Mappins.DefaultStaticMappin')
    -- Use Zzz08_WardrobeVariant as per user request (Testing)
    mappinData.variant = gamedataMappinVariant.ServicePointClothesVariant
    mappinData.visibleThroughWalls = true

    local pos = Vector4.new(entry.coords.x, entry.coords.y, entry.coords.z + 1.0, 1.0) -- Lift slightly

    -- Attempt to snap to entity if streamed
    if entry.container_id then
        local success, hashVal = pcall(loadstring("return " .. tostring(entry.container_id)))
        if success and hashVal then
            local tid = entEntityID.new()
            tid.hash = hashVal
            local entity = Game.FindEntityByID(tid)
            if entity then
                pos = entity:GetWorldPosition()
                pos.z = pos.z + 0.5
            end
        end
    end

    local id = Game.GetMappinSystem():RegisterMappin(mappinData, pos)

    _createdMappins[entry.id] = id
end

function Automation.RemoveMappin(entryID)
    local id = _createdMappins[entryID]
    if id then
        Game.GetMappinSystem():UnregisterMappin(id)
        _createdMappins[entryID] = nil
    end
end

return Automation
