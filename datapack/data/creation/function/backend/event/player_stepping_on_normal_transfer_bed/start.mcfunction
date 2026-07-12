advancement revoke @s only creation:backend/event/player_stepping_on_normal_transfer_bed/start

scoreboard players set @s cr.event.SteppingOnNormalTransferBed 1

execute if entity @s[tag=cr.tag.SuperflatTransferTeleportUsed] run tag @s add cr.tag.StillWakingUpInSuperflat
execute if entity @s[tag=cr.tag.SuperflatTransferTeleportUsed] run tag @s add cr.tag.StillOnNormalTransferBed
tag @s remove cr.tag.SuperflatTransferTeleportUsed

execute if entity @s[tag=cr.tag.StillWakingUpInSuperflat] run return run function creation:backend/effect/blindness/start

function creation:backend/effect/darkness/start