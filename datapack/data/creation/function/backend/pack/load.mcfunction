# Player Statistics
scoreboard objectives add cr.stats.TotalUses dummy

# Player Alerts
scoreboard objectives add cr.alert.PlayerQuit minecraft.custom:minecraft.leave_game
scoreboard objectives add cr.alert.PlayerDied deathCount
scoreboard objectives add cr.alert.PlayerRespawned minecraft.custom:minecraft.time_since_death
scoreboard objectives add cr.alert.PlayerSlept minecraft.custom:minecraft.time_since_rest

# Player Tracking
scoreboard objectives add cr.track.PlayerGamemode dummy


# Player Event State Variables
scoreboard objectives add cr.event.InCreation dummy
scoreboard objectives add cr.event.InSuperflat dummy
scoreboard objectives add cr.event.InNormal dummy
scoreboard objectives add cr.event.InOtherworld dummy
scoreboard objectives add cr.event.SneakingOnCreationBed dummy
scoreboard objectives add cr.event.SneakingOnSuperflatTransferBed dummy
scoreboard objectives add cr.event.SneakingOnNormalTransferBed dummy
scoreboard objectives add cr.event.SneakingOnOtherworldBed dummy
scoreboard objectives add cr.event.SteppingOnCreationBed dummy
scoreboard objectives add cr.event.SteppingOnSuperflatTransferBed dummy
scoreboard objectives add cr.event.SteppingOnNormalTransferBed dummy
scoreboard objectives add cr.event.SteppingOnOtherworldBed dummy

# Player Admin Variables
scoreboard objectives add cr.admin.PlayerBanned dummy
scoreboard objectives add cr.admin.PlayerOnProbation dummy
scoreboard objectives add cr.admin.PlayerDebugging dummy
scoreboard objectives add cr.admin.PlayerInitialized dummy

# Player Temporary Variables
scoreboard objectives add cr.check.TeleportSuccess dummy
scoreboard objectives add cr.check.PermanentChunk dummy
scoreboard objectives add cr.check.LoadedChunk dummy
scoreboard objectives add cr.check.ConditionsPassed dummy
scoreboard objectives add cr.check.InventorySlot dummy
scoreboard objectives add cr.check.OtherworldGamemode dummy



# System Admin Variables
scoreboard objectives add cr.admin.PackInstalled dummy
scoreboard objectives add cr.admin.PackUpdated dummy
scoreboard objectives add cr.admin.PackEnabled dummy
scoreboard objectives add cr.admin.PlayersEnabledByDefault dummy

execute unless score [Creation] cr.admin.PlayersEnabledByDefault matches 0..1 run scoreboard players set [Creation] cr.admin.PlayersEnabledByDefault 1

# System Temporary Variables
scoreboard objectives add cr.tools.StorageIndex dummy
scoreboard objectives add cr.tools.ReinitializePack dummy



# creation Teams Settings
team add cr.team.Creation
team modify cr.team.Creation displayName Creation
team modify cr.team.Creation seeFriendlyInvisibles true
team modify cr.team.Creation deathMessageVisibility never
team modify cr.team.Creation color gold
team modify cr.team.Creation friendlyFire false
team modify cr.team.Creation suffix "?"



# Datapack Initialization
scoreboard players set [Creation] cr.tools.StorageIndex 1
execute unless data storage creation:datapack pack.initialized run function creation:backend/pack/initialize

# Runs any update code for new version of datapack (one time) and keeps record of previously loaded versions
execute unless data storage creation:datapack pack.update.0_1_0b run function creation:backend/pack/update