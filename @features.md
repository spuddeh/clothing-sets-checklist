## Implemented (v2.0.0)

- [x] In-game checklist tracking almost all unique clothing sets (life path and epilogue sets intentionally excluded).
- [x] 0-Engine proximity scanner: event-driven (no polling interval), notifies within `scanner_radius` (default 50m, adjustable 25-100m). No CPU cost when away.
- [x] Automatic tracking: Wardrobe ownership scan on init/overlay-open + `OnInventoryItemAdded` loot detection.
- [x] Quest-fact gating for quest-locked items (MaxTac, Johnny's Shoes, Johnny's Pants) so the scanner does not trigger before they are accessible.
- [x] Smart Pause: scanner suppressed during loading screens, fast travel, and menus.
- [x] Survives saves/autosaves (no PlayerInvalidated teardown).
- [x] Set Pin waypoint (standalone manual map waypoint, decoupled from Core).
- [x] Teleport to any uncollected item (Lazy Mode); Give Item (save-persistent); Unstuck.
- [x] Per-character save persistence.

## Planned
