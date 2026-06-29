advancement revoke @s only creation:backend/event/player_sneaking_on_creation_bed/trigger

execute if entity @s[tag=cr.tag.StillWakingUpInOtherworld] run return fail

execute if score [Creation] cr.admin.PackEnabled matches 0 run return run function creation:backend/alert/creation_disabled

execute if predicate creation:in_superflat run return run function creation:backend/teleport/default/transfer/superflat/use
execute if predicate creation:in_normal run return run function creation:backend/teleport/default/transfer/normal/use

scoreboard players set @s cr.check.TeleportSuccess 0
execute store success score @s cr.check.TeleportSuccess run function creation:backend/tools/execute_with_uuid_storage/0 {function: "creation:backend/teleport/bed/creation/use", target: "@s"}
execute if score @s cr.check.LoadedChunk matches 1 if score @s cr.check.TeleportSuccess matches 0 run function creation:backend/alert/otherworld_bed_not_found
execute if score @s cr.check.LoadedChunk matches 1 if score @s cr.check.TeleportSuccess matches 0 run function creation:backend/teleport/default/creation/use
execute if score @s cr.check.TeleportSuccess matches 1 run tag @s add cr.tag.CreationTeleportUsed
execute if score @s cr.check.TeleportSuccess matches 1 run function creation:backend/statistics/teleport_used
execute if score @s cr.check.TeleportSuccess matches 1 run return run function creation:backend/effect/blindness/start