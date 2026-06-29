advancement revoke @s only creation:backend/event/player_sneaking_on_superflat_transfer_bed/stop

scoreboard players set @s cr.event.SneakingOnSuperflatTransferBed 0

execute if entity @s[tag=cr.tag.ForceloadedTransferSuperflatChunk] run function creation:backend/tools/execute_with_uuid_storage/0 {function: "creation:backend/teleport/bed/transfer/superflat/unload_location", target: "@s"}

scoreboard players set @s cr.check.PermanentChunk 0
tag @s remove cr.tag.ForceloadedTransferSuperflatChunk