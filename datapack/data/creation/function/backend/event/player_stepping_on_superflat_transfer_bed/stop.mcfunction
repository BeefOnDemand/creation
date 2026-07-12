advancement revoke @s only creation:backend/event/player_stepping_on_superflat_transfer_bed/stop

scoreboard players set @s cr.event.SteppingOnSuperflatTransferBed 0

# If player just teleported away, don't do anything else
execute if entity @s[tag=cr.tag.SuperflatTransferTeleportUsed] run return fail
execute at @s if dimension creation:superflat run return fail

# Clear either blindness or darkness depending on if bed teleport effects are still active
execute if entity @s[tag=cr.tag.StillWakingUpInNormal] run function creation:backend/effect/blindness/stop
execute unless entity @s[tag=cr.tag.StillWakingUpInNormal] run function creation:backend/effect/darkness/stop
tag @s remove cr.tag.StillWakingUpInNormal

# Allow bed teleporting again
tag @s remove cr.tag.StillOnSuperflatTransferBed