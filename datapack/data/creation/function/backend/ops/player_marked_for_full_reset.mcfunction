advancement revoke @s only creation:admin/full_reset
advancement revoke @s only creation:backend/ops/player_marked_for_full_reset

execute if predicate creation:in_creation run function creation:backend/teleport/default/otherworld/use

tag @s remove cr.tag.CreationUser

advancement revoke @s only creation:backend/event/player_entered_creation_for_first_time

function creation:backend/tools/execute_with_uuid_storage/0 {function: "creation:backend/tools/initialize_player_storage", target: "@s"}
function creation:backend/tools/initialize_player_scoreboard