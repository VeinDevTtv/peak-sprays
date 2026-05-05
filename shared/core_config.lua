Config = Config or {}

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
-- Checks all PEAK scripts for updates on resource start
Config.EnableVersionChecker = true

-- Show changelog
-- Prints the latest changelog for each running PEAK script on startup
Config.ShowChangelog = true
