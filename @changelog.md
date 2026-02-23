### [2026-02-24] v1.2.3 Bugfix
- **[CSC] [init.lua] v1.2.3**:
    - [Fix] Fixed "Give Item" button granting transient items that vanished on save/reload. Replaced `TransactionSystem:GiveItem()` with `Game.AddToInventory()` for save-persistent item granting.
- **[CSC] [All Files] v1.2.3**:
    - [Chore] Bumped version headers from 1.2.2 to 1.2.3 across all mod files.

### [2026-02-22] Initial
- Repository created from workspace restructure.
