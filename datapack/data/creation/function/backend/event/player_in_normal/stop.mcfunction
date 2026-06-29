advancement revoke @s only creation:backend/event/player_in_normal/stop

scoreboard players set @s cr.event.InNormal 0

function creation:backend/tools/execute_with_uuid_storage/0 {function: "creation:backend/inventory/creation/normal/save", target: "@s"}
function creation:backend/inventory/load