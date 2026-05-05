# Peak Sprays - FiveM Spray Painting Resource

Peak Sprays is an open-source FiveM resource for persistent, in-world spray painting. Players can place a paintable area on a wall, draw directly onto it, and have the result saved and rendered for other players.

## Highlights

- Persistent spray paintings saved through SQL
- In-world DUI canvas rendering
- Spray, erase, undo, redo, brush size, color presets, and optional color picker
- Live preview support while a player is painting
- Admin menu for reviewing, previewing, teleporting to, and deleting paintings
- Framework bridge for QBCore, Qbox, ESX, OX Core, vRP, and standalone usage
- Inventory support for common inventories through usable spray paint and cloth items
- Discord logging hooks and editable custom integration files

## Dependencies

- ox_lib
- oxmysql
- A supported inventory/framework if you want item-based usage

## Installation

1. Download the latest release and place the folder in your server resources as `peak-sprays`.
2. Import `install/install.sql` into your database.
3. Add `ensure peak-sprays` after `ox_lib` and `oxmysql` in your server config.
4. Configure `shared/config.lua` and `server/server-config.lua`.
5. Add the inventory items from the included `install` folder if you use item-based spray painting.

## Commands

- `/spraypaint` starts spray placement when command mode is enabled.
- `/erasepaint` starts erase mode when command mode is enabled.
- `/sprayadmin` opens the admin panel for permitted staff.

## Notes

This is intended as a clean open-source base for server owners and developers. The custom integration files are intentionally editable so you can plug in your own permissions, notifications, economy logic, logging, and gameplay rules.

Feedback, bug reports, and pull requests are welcome.
