advancement revoke @s only creation:backend/event/player_sneaking_on_otherworld_bed/stop

scoreboard players set @s cr.event.SneakingOnOtherworldBed 0

execute if entity @s[tag=cr.tag.ForceloadedOtherworldChunk] run function creation:backend/tools/execute_with_uuid_storage/0 {function: "creation:backend/teleport/bed/otherworld/unload_location", target: "@s"}
scoreboard players set @s cr.check.PermanentChunk 0
tag @s remove cr.tag.ForceloadedOtherworldChunk