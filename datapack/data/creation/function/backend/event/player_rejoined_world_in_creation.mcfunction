advancement revoke @s only creation:backend/event/player_rejoined_world_in_creation

scoreboard players set @s cr.alert.PlayerQuit 0

execute if score [Creation] cr.dpack.Enabled matches 0 run function creation:backend/teleport/default/otherworld/use

execute if score [Creation] cr.dpack.Enabled matches 0 run function creation:backend/alert/creation_disabled