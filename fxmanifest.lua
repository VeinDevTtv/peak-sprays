fx_version 'cerulean'
game 'gta5'
author 'Peak Studio'
description 'Peak Sprays'
version '0.2.0'
lua54 'yes'

shared_scripts {
    '@ox_lib/init.lua',
    'shared/config.lua',
    'shared/locales.lua',
    'shared/utils.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/init.lua',
    'server/bridge.lua',
    'server/custom.lua',
    'server/manager.lua',
    'server/admin.lua',
    'server/logs.lua',
    'server/server-config.lua',
}

client_scripts {
    'client/init.lua',
    'client/bridge.lua',
    'client/custom.lua',
    'client/manager.lua',
    'client/painter.lua',
    'client/raycast.lua',
    'client/renderer.lua',
    'client/eraser.lua',
    'client/admin.lua',
}

ui_page 'ui/dist/index.html'

files {
    'ui/dist/index.html',
    'ui/dist/**/*',
}

dependencies {
    'ox_lib',
    'oxmysql',
}

escrow_ignore {
    'shared/config.lua',
    'shared/locales.lua',
    'client/custom.lua',
    'server/custom.lua',
    'server/server-config.lua',
}

dependency '/assetpacks'
