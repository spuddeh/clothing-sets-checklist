### [2026-05-19] v2.0.0 — 0-Engine migration

- **[Major] Proximity backend migrated from Cron polling to 0-Engine reactive primitives** (SpatialSet + per-entry detection zones). Removed `Cron.lua`, the polling loop, and the `scanner_interval` config. `init.lua` rewritten: `GetMod` inside `onInit`, `Mod.WhenReady` priority 2, `GameSession.OnEnd` for `isSessionActive` gating. `Automation.lua` is a thin wrapper over the shared `ChecklistCore` (byte-identical across all 4 mods).
- **[New] Required dependency**: 0-Engine (Nexus 27967, pure CET-only build, 0.18.6+). 0-Engine itself requires CET 1.32+, Codeware 1.12+, redscript 0.5.19+.
- **[Change] No `PlayerInvalidated` teardown subscriber.** 0-Engine's `Reset()` does not unregister sets/zones; subscribing a teardown there converts a transient false-invalidation into permanent breakage. Registrations persist; 0-Engine auto-resumes on Lifecycle recovery. (Wiki: `learnings/0-engine-playerinvalidated-no-teardown`.)
- **[Change] "Set Pin" decoupled** into a standalone `init.lua` manual waypoint, independent of Core. Net user-facing behaviour unchanged. (Wiki: `decisions/user-pin-decoupled-from-core`.)
- **[Fix] Johnny's Shoes / Johnny's Pants** quest-fact gating (the unreleased v1.2.4 data fix) folded into this release: scanner no longer triggers for them before they are accessible. Quest-fact gating handled via Core `canShow`.
- **[New] `GameUI.lua`** (psiberx CET Kit) added for fast loading-screen detection.

### [2026-03-21] v1.2.4 Data Update
- **[CSC] [db.lua] v1.2.4**:
    - [Data] Added quest fact checks for Johnny's Shoes and Johnny's Pants to prevent proximity scanner from triggering before the items are accessible.
- **[CSC] [All Files] v1.2.4**:
    - [Chore] Bumped version headers from 1.2.3 to 1.2.4 across all mod files.

### [2026-02-24] v1.2.3 Bugfix
- **[CSC] [init.lua] v1.2.3**:
    - [Fix] Fixed "Give Item" button granting transient items that vanished on save/reload. Replaced `TransactionSystem:GiveItem()` with `Game.AddToInventory()` for save-persistent item granting.
- **[CSC] [All Files] v1.2.3**:
    - [Chore] Bumped version headers from 1.2.2 to 1.2.3 across all mod files.

### [2026-02-22] Initial
- Repository created from workspace restructure.

---

## Historical Changelog (Pre-Restructure)

### v1.0.0
- Initial Upload

### v1.1.0
- Proximity Scanning System: A passive proximity scanner that runs in the background to let you know when uncollected clothing items are near.
- Proximity Scanning System: Dynamic Mappins - when you get close to an uncollected item, a custom icon will appear on your HUD along with notification text letting you know which item, and where.
- Various UI improvements.
- Optimization: The scanner uses weak references and optimized timers so it has negligible impact on your FPS, even with scanning enabled.
- Improved Directions: Updated text descriptions and fixed some typos.

### v1.2.0
- Added a check to prevent the proximity scanner (map pin) from triggering until the quest requirement is met.
- Currently only implemented for the MaxTac gear, but I'll add more as I uncover the specific quest facts.

### v1.2.1
- Added a check to prevent the proximity scanner from triggering for the remaining quest-locked items.
- Fixed scanner loop not stopping correctly when all clothing items are collected.

### v1.2.2
- Added the missing container locations and data for the Yorinobu set

### v1.2.3
- Fixed a bug where items granted with the "Give item" button don't persist through saves.
