# Peak Sprays

Peak Sprays is an open-source FiveM resource for persistent in-world spray painting. Players select a wall area, paint on a DUI canvas, and the finished spray is saved to SQL and rendered back into the world for nearby players.

![Peak Sprays preview](docs/spray-preview.gif)

## Features

- Persistent spray paintings stored in SQL
- DUI-based in-world canvas rendering
- Paint, erase, undo, redo, brush sizing, color presets, and optional color picker
- Live preview while players are actively painting
- Admin panel for listing, previewing, teleporting to, and deleting sprays
- Framework bridge for QBCore, Qbox, ESX, OX Core, vRP, and standalone setups
- Usable item and command-based flows
- Editable custom hooks for permissions, notifications, economy, and server integrations
- Discord logging support with server-side webhook configuration

## Dependencies

- `ox_lib`
- `oxmysql`
- A supported framework and inventory if you want item-based usage

## Installation

1. Place this resource in your server resources folder as `peak-sprays`.
2. Import [install/install.sql](install/install.sql) into your database.
3. Add the inventory items from [install](install) if you use item-based spray painting.
4. Configure [shared/config.lua](shared/config.lua) and [server/server-config.lua](server/server-config.lua).
5. Ensure dependencies before this resource:

```cfg
ensure ox_lib
ensure oxmysql
ensure peak-sprays
```

## Commands

- `/spraypaint` starts spray placement when `Config.UseCommand` is enabled.
- `/erasepaint` starts erase mode when `Config.UseCommand` is enabled.
- `/sprayadmin` opens the admin panel for permitted staff.

## Configuration

- Use [shared/config.lua](shared/config.lua) for gameplay, framework, inventory, command, paint area, brush, rendering, logging, expiry, and import/export settings.
- Use [client/custom.lua](client/custom.lua) for client-side permission checks, notifications, progress bars, targets, and custom exports.
- Use [server/custom.lua](server/custom.lua) for server-side permission checks, money overrides, and lifecycle hooks.
- Use [server/server-config.lua](server/server-config.lua) for sensitive server-only values such as Discord webhooks.

## Publishing Notes

- Do not publish live webhook URLs or credentials.
- Build the NUI before release with `npm run build` from the `ui` folder.
- Include `ui/dist`, `install`, `client`, `server`, `shared`, `fxmanifest.lua`, and this README in release archives.
- Do not include `ui/node_modules` in release archives.

## Contributing

Contributions are welcome. Please read [CONTRIBUTING.md](CONTRIBUTING.md) and [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) before opening issues or pull requests.
