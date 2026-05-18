-- ======================================================================================
-- Mod Name: Clothing Sets Checklist
-- Author: Spuddeh
-- Description: CSC-specific automation logic. Delegates shared behaviour to ChecklistCore.
-- Mod Version: 1.3.0
-- ======================================================================================

local Automation     = {}
local Core           = require("Modules/ChecklistCore")
local ClothingSetsDB = require("db")
local Utils          = require("Modules/Utils")

-- ### FORWARDED CORE API ###

Automation.SetInCombat          = Core.SetInCombat
Automation.SetInCutscene        = Core.SetInCutscene
Automation.SetMenuPaused        = Core.SetMenuPaused
Automation.SetItemStatus     = Core.SetItemStatus
Automation.OnItemLooted      = Core.OnItemLooted
Automation.HasNearbyEntries  = Core.HasNearbyEntries
Automation.UpdateState       = Core.UpdateState
Automation.RegisterItemSet   = Core.RegisterItemSet
Automation.UnregisterItemSet = Core.UnregisterItemSet
Automation.RemoveMappin      = Core.RemoveMappin

-- ### CSC-SPECIFIC: COLLECTED STATE ###

local _sessionState = nil

local function IsCollected(id)
    return _sessionState and _sessionState.progress and _sessionState.progress[id] == true
end

-- ### CSC-SPECIFIC: BUILD ENTRIES ###
-- All uncollected items with coords enter the SpatialSet.
-- Quest fact gating is checked in onItemEnter so items become visible as quests progress
-- without needing a SpatialSet rebuild.

local function BuildEntries()
    local entries = {}
    for _, cat in ipairs(ClothingSetsDB) do
        for _, entry in ipairs(cat.entries) do
            if not IsCollected(entry.id) and entry.coords and entry.coords.x ~= 0 then
                table.insert(entries, {
                    x       = entry.coords.x,
                    y       = entry.coords.y,
                    z       = entry.coords.z,
                    id      = entry.id,
                    name    = entry.name,
                    dbEntry = entry,
                })
            end
        end
    end
    return entries
end

-- ### CSC-SPECIFIC: canShow ###
-- Gates mappin + snap zone + notification. Core calls this before any visible action.
-- Items with unmet quest facts are in the SpatialSet but invisible until the quest progresses.

local function CanShow(entry)
    if entry.quest_fact and entry.quest_fact ~= "" then
        local qs = Game.GetQuestsSystem()
        return qs ~= nil and qs:GetFactStr(entry.quest_fact) > 0
    end
    return true
end

-- ### CSC-SPECIFIC: onItemEnter ###
-- canShow has already verified the quest fact by the time this is called.

local function OnItemEnter(spatialEntry, _)
    local entry = spatialEntry.dbEntry
    if not Core.IsNotified(entry.id) then
        Utils.Notify("Clothing Set Item nearby: " .. entry.name)
        Core.SetNotified(entry.id)
    end
end

-- ### SCAN (overlay open) ###

function Automation.Scan()
    Core.Scan()
end

-- ### INIT ###

function Automation.Init(sessionState, _, debugMode, settings)
    _sessionState = sessionState

    Core.Init(GetMod("0-Engine"), sessionState, settings, {
        setName       = "csc_items",
        mappinVariant = gamedataMappinVariant.ServicePointClothesVariant,
        snapRadius    = 20.0,
        buildEntries  = BuildEntries,
        canShow       = CanShow,
        onItemEnter   = OnItemEnter,
        isCollected   = IsCollected,
    }, debugMode or false)

    local _, count, total = Core.CheckAllCollected()
    Utils.Log(string.format("Automation Init: %d/%d collected.", count, total))
end

return Automation
