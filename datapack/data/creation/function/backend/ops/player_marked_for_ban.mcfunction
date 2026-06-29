advancement revoke @s only creation:backend/ops/player_marked_for_ban

scoreboard players set @s cr.admin.PlayerBanned 1

execute as @s if predicate creation:in_creation run function creation:backend/teleport/default/otherworld/use

execute if predicate creation:creation_user run function creation:backend/alert/player_banned_from_creation