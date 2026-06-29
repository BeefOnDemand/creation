advancement revoke @s only creation:backend/event/player_in_otherworld/stop

scoreboard players set @s cr.event.InOtherworld 0

function creation:backend/tools/execute_with_uuid_storage/0 {function: "creation:backend/inventory/otherworld/save", target: "@s"}
function creation:backend/inventory/load