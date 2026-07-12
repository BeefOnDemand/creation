advancement revoke @s only creation:backend/event/player_in_creation/start

execute if predicate creation:logging_events run tellraw @a[predicate=creation:viewing_events] [{"text":"[EVENT] ",color:"gray"},{"selector":"@s","italic":true},{"text":" entered Creation.",color:"gray","italic":true}]

scoreboard players set @s cr.event.InCreation 1

tag @s add cr.tag.CreationUser

execute if score [Creation] cr.dpack.Enabled matches 0 run function creation:backend/teleport/default/otherworld/use
execute if score [Creation] cr.dpack.Enabled matches 0 run return run function creation:backend/alert/creation_disabled

execute if predicate creation:banned run return run function creation:backend/ops/player_marked_for_ban

team join cr.team.Creation @s

scoreboard players operation @s cr.check.OtherworldGamemode = @s cr.track.PlayerGamemode
gamemode creative @s[predicate=!creation:on_probation]
gamemode adventure @s[predicate=creation:on_probation]

tag @s remove cr.tag.OtherworldTeleportUsed
tag @s remove cr.tag.StillWakingUpInOtherworld
tag @s remove cr.tag.StillOnCreationBed