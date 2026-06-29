advancement revoke @s only creation:backend/event/player_respawned_in_creation

execute if score [Creation] cr.admin.PackEnabled matches 0 run function creation:backend/teleport/default/otherworld/use

execute if score [Creation] cr.admin.PackEnabled matches 0 run function creation:backend/alert/creation_disabled