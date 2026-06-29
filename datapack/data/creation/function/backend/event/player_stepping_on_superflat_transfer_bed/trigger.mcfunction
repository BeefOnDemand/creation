advancement revoke @s only creation:backend/event/player_stepping_on_superflat_transfer_bed/trigger

execute if entity @s[tag=cr.tag.StillWakingUpInNormal] run return run function creation:backend/effect/blindness/trigger

function creation:backend/effect/darkness/trigger