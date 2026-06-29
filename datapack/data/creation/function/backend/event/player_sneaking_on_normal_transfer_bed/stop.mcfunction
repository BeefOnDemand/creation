advancement revoke @s only creation:backend/event/player_sneaking_on_normal_transfer_bed/stop

scoreboard players set @s cr.event.SneakingOnNormalTransferBed 0

execute if entity @s[tag=cr.tag.ForceloadedTransferNormalChunk] run function creation:backend/tools/execute_with_uuid_storage/0 {function: "creation:backend/teleport/bed/transfer/normal/unload_location", target: "@s"}

scoreboard players set @s cr.check.PermanentChunk 0
tag @s remove cr.tag.ForceloadedTransferNormalChunk