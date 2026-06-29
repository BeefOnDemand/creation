advancement revoke @s only creation:backend/event/player_in_superflat/stop

scoreboard players set @s cr.event.InSuperflat 0

function creation:backend/tools/execute_with_uuid_storage/0 {function: "creation:backend/inventory/creation/superflat/save", target: "@s"}
function creation:backend/inventory/load