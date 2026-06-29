advancement revoke @s only creation:backend/event/player_stepping_on_creation_bed/start

execute if score [Creation] cr.admin.PackEnabled matches 0 run return fail

scoreboard players set @s cr.event.SteppingOnCreationBed 1

execute if entity @s[tag=cr.tag.OtherworldTeleportUsed] run tag @s add cr.tag.StillWakingUpInOtherworld
tag @s remove cr.tag.OtherworldTeleportUsed

execute if entity @s[tag=cr.tag.StillWakingUpInOtherworld] run return run function creation:backend/effect/blindness/start

function creation:backend/effect/darkness/start