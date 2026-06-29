advancement revoke @s only creation:backend/event/player_in_creation/start

scoreboard players set @s cr.event.InCreation 1

tag @s add cr.tag.CreationUser

execute if predicate creation:debugging run tellraw @a[tag=cr.tag.Debugger] [{"text":"[DEBUG] ",color:"gray"},{"selector":"@s","italic":true},{"text":" entered creation.",color:"gray","italic":true}]

execute if score [Creation] cr.admin.PackEnabled matches 0 run function creation:backend/teleport/default/otherworld/use
execute if score [Creation] cr.admin.PackEnabled matches 0 run return run function creation:backend/alert/creation_disabled

execute if predicate creation:banned run return run function creation:backend/ops/player_marked_for_ban

team join cr.team.Creation @s

scoreboard players operation @s cr.check.OtherworldGamemode = @s cr.track.PlayerGamemode
gamemode creative @s[predicate=!creation:on_probation]
gamemode adventure @s[predicate=creation:on_probation]

tag @s remove cr.tag.OtherworldTeleportUsed