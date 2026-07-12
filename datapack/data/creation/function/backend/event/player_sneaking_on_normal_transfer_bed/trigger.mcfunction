advancement revoke @s only creation:backend/event/player_sneaking_on_normal_transfer_bed/trigger

execute if entity @s[tag=cr.tag.StillOnNormalTransferBed] run return fail

scoreboard players set @s cr.check.TeleportSuccess 0
execute store success score @s cr.check.TeleportSuccess run function creation:backend/tools/execute_with_uuid_storage/0 {function: "creation:backend/teleport/bed/transfer/normal/use", target: "@s"}
execute if score @s cr.check.LoadedChunk matches 1 if score @s cr.check.TeleportSuccess matches 0 run function creation:backend/alert/transfer_bed_not_found
execute if score @s cr.check.LoadedChunk matches 1 if score @s cr.check.TeleportSuccess matches 0 run function creation:backend/teleport/default/transfer/normal/use
execute if score @s cr.check.TeleportSuccess matches 1 run tag @s add cr.tag.NormalTransferTeleportUsed
execute if score @s cr.check.TeleportSuccess matches 1 run return run function creation:backend/effect/blindness/start