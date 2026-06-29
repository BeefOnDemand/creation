advancement revoke @s only creation:backend/ops/player_unmarked_for_ban

scoreboard players set @s cr.admin.PlayerBanned 0

execute unless predicate creation:creation_user run return fail

function creation:backend/alert/player_unbanned_from_creation