advancement revoke @s only creation:admin/storage_reset
advancement revoke @s only creation:backend/ops/player_marked_for_storage_reset

function creation:backend/tools/execute_with_uuid_storage/0 {function: "creation:backend/tools/initialize_player_storage", target: "@s"}