# Clothing Sets Checklist - Nexus Changelogs

### 2.0.0
- New required dependency: 0-Engine (Nexus mod 27967, pure CET-only build). See the requirements section in the description. The mod will not run without it.
- The proximity scanner was rebuilt on 0-Engine. It reacts to you crossing into range instead of polling on a timer, so there is no CPU cost when you are away from any item, and detection is tighter up close.
- Fixed: Johnny's Shoes and Johnny's Pants no longer trigger the scanner before those items are actually accessible.
- Removed the scanner interval setting. The new system has no polling interval so it no longer applies.

### 1.2.3
- Fixed a bug where items granted with the "Give item" button don't persist through saves.

### 1.2.2
- Added the missing container locations and data for the Yorinobu set

### 1.2.1
- Added a check to prevent the proximity scanner from triggering for the remaining quest-locked items.
- Fixed scanner loop not stopping correctly when all clothing items are collected.

### 1.2.0
- Added a check to prevent the proximity scanner (map pin) from triggering until the quest requirement is met.
- Currently only implemented for the MaxTac gear, but I'll add more as I uncover the specific quest facts.

### 1.1.0
- Proximity Scanning System: A passive proximity scanner that runs in the background to let you know when uncollected clothing items are near.
- Proximity Scanning System: Dynamic Mappins - when you get close to an uncollected item, a custom icon will appear on your HUD along with notification text letting you know which item, and where.
- Various UI improvements.
- Optimization: The scanner uses weak references and optimized timers so it has negligible impact on your FPS, even with scanning enabled.
- Improved Directions: Updated text descriptions and fixed some typos.

### 1.0.0
- Initial Upload

---
## Notes

No issues flagged.

---
## Stickied Comment BBCode

```
[color=#ffff00][size=5][b]- Changes -[/b][/size][/color]

[b][size=3]Version 2.0.0[/size][/b]
[list][*]New required dependency: 0-Engine (Nexus mod 27967, pure CET-only build). The mod will not run without it. See the requirements section in the description.
[*]The proximity scanner was rebuilt on 0-Engine. No CPU cost when you are away from any item, and tighter detection up close.
[*]Fixed: Johnny's Shoes and Johnny's Pants no longer trigger the scanner before those items are actually accessible.
[*]Removed the scanner interval setting (the new system has no polling interval).
[/list]
[b][size=3]Version 1.2.3[/size][/b]
[spoiler][list][*]Fixed a bug where items granted with the "Give item" button don't persist through saves.
[/list][/spoiler]
[b][size=3]Version 1.2.2[/size][/b]
[spoiler][list][*]Added the missing container locations and data for the Yorinobu set
[/list][/spoiler]
[b][size=3]Version 1.2.1[/size][/b]
[spoiler][list][*]Added a check to prevent the proximity scanner from triggering for the remaining quest-locked items.
[*]Fixed scanner loop not stopping correctly when all clothing items are collected.
[/list][/spoiler]
[b][size=3]Version 1.2.0[/size][/b]
[spoiler][list][*]Added a check to prevent the proximity scanner (map pin) from triggering until the quest requirement is met.
[*]Currently only implemented for the MaxTac gear, but I'll add more as I uncover the specific quest facts.
[/list][/spoiler]
[b][size=3]Version 1.1.0[/size][/b]
[spoiler][list][*]Proximity Scanning System: A passive proximity scanner that runs in the background to let you know when uncollected clothing items are near.
[*]Proximity Scanning System: Dynamic Mappins - when you get close to an uncollected item, a custom icon will appear on your HUD along with notification text letting you know which item, and where.
[*]Various UI improvements.
[*]Optimization: The scanner uses weak references and optimized timers so it has negligible impact on your FPS, even with scanning enabled.
[*]Improved Directions: Updated text descriptions and fixed some typos.
[/list][/spoiler]
[b][size=3]Version 1.0.0[/size][/b]
[spoiler][list][*]Initial Upload
[/list][/spoiler]
```

> Character count: ~2000 / 5000
