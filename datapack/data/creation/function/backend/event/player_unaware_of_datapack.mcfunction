advancement revoke @s only creation:backend/event/player_unaware_of_datapack

function creation:backend/alert/datapack_installed

scoreboard players set @s cr.admin.PackInstalled 1
scoreboard players operation @s cr.admin.PackUpdated = [Creation] cr.admin.PackUpdated