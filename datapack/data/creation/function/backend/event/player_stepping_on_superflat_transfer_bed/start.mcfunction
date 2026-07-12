advancement revoke @s only creation:backend/event/player_stepping_on_superflat_transfer_bed/start

scoreboard players set @s cr.event.SteppingOnSuperflatTransferBed 1

execute if entity @s[tag=cr.tag.NormalTransferTeleportUsed] run tag @s add cr.tag.StillWakingUpInNormal
execute if entity @s[tag=cr.tag.NormalTransferTeleportUsed] run tag @s add cr.tag.StillOnSuperflatTransferBed
tag @s remove cr.tag.NormalTransferTeleportUsed

execute if entity @s[tag=cr.tag.StillWakingUpInNormal] run return run function creation:backend/effect/blindness/start

function creation:backend/effect/darkness/start