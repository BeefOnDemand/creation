advancement revoke @s only creation:backend/event/player_stepping_on_otherworld_bed/start

execute if score [Creation] cr.dpack.Enabled matches 0 run return fail

scoreboard players set @s cr.event.SteppingOnOtherworldBed 1

execute if entity @s[tag=cr.tag.CreationTeleportUsed] run tag @s add cr.tag.StillWakingUpInCreation
execute if entity @s[tag=cr.tag.CreationTeleportUsed] run tag @s add cr.tag.StillOnOtherworldBed
tag @s remove cr.tag.CreationTeleportUsed

execute if entity @s[tag=cr.tag.StillWakingUpInCreation] run return run function creation:backend/effect/blindness/start

function creation:backend/effect/darkness/start
