advancement revoke @s only creation:backend/event/player_stepping_on_creation_bed/stop

scoreboard players set @s cr.event.SteppingOnCreationBed 0

# If player just teleported away, don't do anything else
execute if entity @s[tag=cr.tag.CreationTeleportUsed] run return fail
execute if predicate creation:in_creation run return fail

# Clear either blindness or darkness depending on if bed teleport effects are still active
execute if entity @s[tag=cr.tag.StillWakingUpInOtherworld] run function creation:backend/effect/blindness/stop
execute unless entity @s[tag=cr.tag.StillWakingUpInOtherworld] run function creation:backend/effect/darkness/stop

# Allow bed teleporting again
tag @s remove cr.tag.StillWakingUpInOtherworld







