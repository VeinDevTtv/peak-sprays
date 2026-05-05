Config = Config or {}

-- ============================================================
-- FRAMEWORK & CORE SETTINGS
-- ============================================================

-- Framework detection mode
-- 'auto' = auto-detect running framework
-- 'qbcore', 'qbox', 'esx', 'vrp', 'standalone' = force specific framework
Config.Framework = 'auto'

-- Banking / Money system
-- 'auto' = use framework-native money functions
-- 'custom' = use Open.AddMoney / Open.RemoveMoney from server/custom.lua
Config.Banking = 'auto'

-- Default money type used for transactions
-- QBCore: 'cash' or 'bank'
-- ESX: 'money' or 'bank'
Config.DefaultMoneyType = 'cash'

-- Notification system
-- 'auto' = auto-detect (ox_lib > qb-core > esx > native)
-- 'ox_lib', 'qb-core', 'esx', 'native' = force specific
-- 'custom' = use Open.CustomNotify from client/custom.lua
Config.Notify = 'auto'

-- Target system
-- 'auto' = auto-detect (ox_target > qb-target)
-- 'ox_target', 'qb-target' = force specific
-- 'custom' = use Open.CustomTarget from client/custom.lua
Config.Target = 'auto'

-- Progress bar system
-- 'auto' = auto-detect (ox_lib > qb-core > wait)
-- 'ox_lib', 'qb-core', 'wait' = force specific
-- 'custom' = use Open.CustomProgressBar from client/custom.lua
Config.Progress = 'auto'

-- Inventory system
-- 'auto' = auto-detect
-- 'ox_inventory', 'qb-inventory', 'qs-inventory', 'ps-inventory', 'codem-inventory' = force specific
Config.Inventory = 'auto'

-- Ambulance / Death check system
-- 'auto' = auto-detect running ambulance resource
-- 'wasabi_ambulance_v2', 'wasabi_ambulance', 'qb-ambulancejob', 'esx_ambulancejob',
-- 'renewed-ambulancejob', 'msk_medical', 'ars_ambulancejob', 'pickle_injury',
-- 'cd_ambulance', 'qbx_medical', 'ox_mdt'
-- 'custom' = use Open.CustomIsPlayerDead from client/custom.lua and server/custom.lua
Config.Ambulance = 'auto'

-- Debug mode - prints detailed logs to console
Config.Debug = false

-- Admin groups (used by IsAdmin check)
Config.AdminGroups = { 'group.admin', 'admin', 'god', 'superadmin' }

-- Admin ACE permission (alternative to group-based check)
Config.AdminAce = 'admin'

-- Discord webhook for core-level logs (optional)
Config.DiscordWebhook = ''

-- SQL wrapper preference
-- 'auto' = auto-detect (oxmysql > ghmattimysql > mysql-async)
Config.SQLDriver = 'auto'

-- Version checker
-- Checks all Peak scripts for updates on resource start
Config.EnableVersionChecker = true
Config.VersionURL = 'https://raw.githubusercontent.com/VeinDevTtv/peak-sprays/master/version.json'

-- Show changelog
-- Prints the latest changelog for each running Peak script on startup
Config.ShowChangelog = true

-- ============================================================
-- SPRAY PAINT SETTINGS
-- ============================================================

-- Item / Command triggers
Config.UseItem = true                         -- Enable usable item to start spray mode
Config.UseCommand = true                      -- Enable command to start spray mode
Config.SprayPaintItem = 'spraypaint'          -- Item name for generic spray paint
Config.ClothItem = 'spraycloth'               -- Item name for eraser cloth
Config.CommandName = 'spraypaint'             -- Command to start spray mode
Config.EraseCommandName = 'erasepaint'        -- Command to start erase mode
Config.AdminCommandName = 'sprayadmin'        -- Command to open admin panel

-- Item consumption
Config.ConsumeSprayOnValidate = true          -- Consume spray item when painting is validated (saved)
Config.ConsumeClothOnValidate = true          -- Consume cloth item when erase session is validated
Config.SprayUsesPerItem = 1                   -- How many paintings per spray item (0 = infinite)
Config.ClothUsesPerItem = 1                   -- How many erase sessions per cloth item (0 = infinite)

-- Colored spray items: item name -> forced color (hex)
-- If player uses one of these, the color picker is locked to this color
Config.ColoredItems = {
    -- spraypaint_red    = '#FF0000',
    -- spraypaint_blue   = '#0000FF',
}

-- ============================================================
-- CANVAS 
-- ============================================================

Config.CanvasWidth = 1024                     -- DUI canvas width in pixels
Config.CanvasHeight = 1024                    -- DUI canvas height in pixels

-- ============================================================
-- PAINT AREA (WORLD SPACE)
-- ============================================================

Config.MaxPaintAreaWidth = 5.0                -- Max width of paint zone in world units
Config.MaxPaintAreaHeight = 5.0               -- Max height of paint zone in world units
Config.MinPaintAreaSize = 0.3                 -- Minimum side length in world units
Config.WallOffset = 0.005                     -- Offset from wall surface to prevent z-fighting

-- ============================================================
-- DISTANCES
-- ============================================================

Config.SelectionMaxDistance = 10.0            -- Max raycast distance for corner selection
Config.PaintMaxDistance = 4.0                 -- Max raycast distance while painting
Config.RenderDistance = 50.0                  -- Distance to start rendering saved paintings
Config.UnloadDistance = 80.0                  -- Distance to destroy DUI for saved paintings
Config.AutoSaveDistance = 15.0                -- If player walks this far from paint zone, auto-save
Config.EraserMaxDistance = 4.0                -- Max raycast distance for erasing

-- ============================================================
-- PERFORMANCE
-- ============================================================

Config.MaxActiveRenderers = 20                -- Max simultaneous DUI objects rendered
Config.RendererCheckInterval = 1000           -- ms between proximity checks for saved paintings
Config.StrokeThrottleMs = 16                  -- Min ms between stroke points sent to DUI (~60fps)

-- ============================================================
-- BRUSH SETTINGS
-- ============================================================

Config.BrushSizes = {
    { name = 'THIN',   size = 4,  sprayDensity = 15 },
    { name = 'MEDIUM', size = 10, sprayDensity = 25 },
    { name = 'THICK',  size = 20, sprayDensity = 40 },
}

Config.DefaultBrushSizeIndex = 1              -- Starting brush size index (1 = THIN)
Config.DefaultDensity = 0.7                   -- Default spray density/scatter (0.0 = pen, 1.0 = full spray)
Config.PressureEnabled = true                 -- Enable pressure variation based on distance
Config.DefaultPressure = 0.8                  -- Default pressure (0.0 - 1.0)
Config.MinPressure = 0.3                      -- Minimum pressure
Config.MaxPressure = 1.0                      -- Maximum pressure

-- ============================================================
-- COLORS
-- ============================================================

Config.DefaultColor = '#000000'               -- Default spray color

Config.ColorPresets = {
    '#000000', -- Black
    '#FFFFFF', -- White
    '#FF0000', -- Red
    '#00FF00', -- Green
    '#0000FF', -- Blue
    '#FFFF00', -- Yellow
    '#FF8800', -- Orange
    '#8800FF', -- Purple
    '#FF00AA', -- Pink
    '#00FFFF', -- Cyan
    '#8B4513', -- Brown
    '#808080', -- Gray
}

Config.EnableColorPicker = true               -- Allow full color picker (beyond presets)

-- ============================================================
-- KEY BINDINGS
-- ============================================================

Config.Keys = {
    SelectCorner = 24,       -- place a corner
    CancelSelection = 178,   -- cancel
    Paint = 24,              -- spray paint
    Erase = 25,              -- erase mode
    Validate = 191,          -- save painting
    Cancel = 178,            -- cancel painting
    Undo = -1,               -- Handled via keyboard listener (Z)
    Redo = -1,               -- Handled via keyboard listener (Y)
    ScrollUp = 241,          -- increase brush size
    ScrollDown = 242,        -- decrease brush size
    ShakeCan = 47,           -- shake spray can
    ToggleMouse = 19,        -- toggle mouse
    MoveForward = 172,       -- step toward wall
    MoveBackward = 173,      -- step away from wall

    -- Eraser
    EraseStroke = 24,        -- erase stroke
    ValidateErase = 191,     -- save erase
    CancelErase = 178,       -- cancel erase
}

-- Position adjustment step size (in meters) — moves the DUI surface, not the player
Config.PositionStepSize = 0.01
Config.DuiMoveMaxOffset = 0.3                 -- Max distance (meters) DUI can be moved from original position

-- Custom keyboard keys for undo/redo (scancodes)
Config.UndoKey = 0x5A        -- Z key scancode
Config.RedoKey = 0x59        -- Y key scancode

-- ============================================================
-- STROKE LIMITS
-- ============================================================

Config.MaxStrokesPerPainting = 500            -- Max number of strokes per canvas
Config.MaxPointsPerStroke = 5000              -- Max points in a single stroke 
Config.MaxTotalPoints = 50000                 -- Max total points across all strokes

-- ============================================================
-- EXPIRY SYSTEM
-- ============================================================

Config.ExpiryEnabled = false                  -- Enable auto-expiry of paintings
Config.ExpiryDays = 7                         -- Days before a painting expires (0 = never)
Config.ExpiryCheckInterval = 1800             -- Seconds between expiry checks (default 30 min)

-- ============================================================
-- ANIMATIONS & PROPS
-- ============================================================

Config.SprayAnimation = {
    dict = 'anim@scripted@freemode@postertag@graffiti_spray@male@',
    anim = 'spray_can_idle_male',
    flag = 49,                                
}

Config.ShakeAnimation = {
    dict = 'anim@scripted@freemode@postertag@graffiti_spray@male@',
    anim = 'shake_can_male',
    duration = 2000,
}

Config.SprayCanProp = 'prop_cs_spray_can'
Config.ClothProp = 'v_res_fa_sponge01'

-- Particle FX for spray effect
Config.SprayParticle = {
    dict = 'core',
    name = 'veh_respray_smoke',
    scale = 0.2,
    enabled = true,
}

-- Spray realism: distance-based brush spread and velocity-based opacity
Config.SprayDistanceSpread = true             -- Brush spread grows with wall distance
Config.SprayDistanceMinMult = 0.6             -- Brush multiplier at closest range
Config.SprayDistanceMaxMult = 2.5             -- Brush multiplier at max paint distance
Config.SprayVelocityFade = true               -- Fast mouse = lighter, slow = denser
Config.SprayVelocityFadeMin = 0.15            -- Min opacity multiplier at max speed
Config.SprayVelocityFadeMax = 1.0             -- Max opacity multiplier at zero speed
Config.SprayVelocityMaxSpeed = 300.0          -- Canvas-pixels/frame threshold for max fade

-- Spray sound 
Config.SpraySoundEnabled = true                -- Enable/disable spray sound effect

-- ============================================================
-- SURFACE MATERIALS (allowed materials for painting)
-- Set to empty table {} to allow ALL surfaces
-- ============================================================

Config.AllowedSurfaceMaterials = {
    -- Common wall/surface material hashes
    -- Empty = allow all surfaces
}

-- ============================================================
-- BLACKLISTED ZONES (areas where painting is prohibited)
-- ============================================================

Config.BlacklistedZones = {
    -- { coords = vector3(x, y, z), radius = 50.0 },
}

-- ============================================================
-- DISCORD LOGGING
-- ============================================================

Config.LogPaintCreate = true                  -- Log when a painting is created
Config.LogPaintDelete = true                  -- Log when a painting is deleted
Config.LogPaintErase = true                   -- Log when a painting is erased
Config.LogAdminActions = true                 -- Log admin panel actions

Config.LogColors = {
    Create = 3066993,    -- Green
    Delete = 15158332,   -- Red
    Erase = 15105570,    -- Orange
    Admin = 3447003,     -- Blue
}

-- ============================================================
-- NOTIFICATION DURATIONS
-- ============================================================

Config.NotifyDuration = 5000                  -- Default notification duration (ms)

-- ============================================================
-- ERASE ANIMATION
-- ============================================================

Config.EraseAnimation = {
    dict = 'amb@world_human_maid_clean@base',
    anim = 'base',
    flag = 49,                                -- 49 = upper body + loop
}

-- ============================================================
-- LIVE PREVIEW (broadcast drawing in real-time to nearby players)
-- ============================================================

Config.LivePreviewEnabled = true              -- Enable live preview for other players
Config.LivePreviewInterval = 1000             -- ms between live preview broadcasts (1000 = 1 sec)
Config.LivePreviewDistance = 30.0             -- Max distance for live preview sync

-- ============================================================
-- IMPORT / EXPORT
-- ============================================================

Config.ImportExportEnabled = true             -- Enable graffiti import/export system
Config.ImportCommand = 'sprayimport'          -- Command to import a painting code
Config.ExportCommand = 'sprayexport'          -- Command to export last painting

-- Export rate limiting (prevents SQL spam)
Config.ExportLimitPerUser = 10                -- Max exports per user within the cooldown window
Config.ExportLimitPerPainting = 3             -- Max exports per specific painting within the cooldown window
Config.ExportLimitResetSeconds = 3600         -- Cooldown window in seconds (3600 = 1 hour)
