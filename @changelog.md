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
