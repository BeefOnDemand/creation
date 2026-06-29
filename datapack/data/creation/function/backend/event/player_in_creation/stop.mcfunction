advancement revoke @s only creation:backend/event/player_in_creation/stop

scoreboard players set @s cr.event.InCreation 0

execute if score @s cr.check.OtherworldGamemode matches 0 run gamemode survival @s
execute if score @s cr.check.OtherworldGamemode matches 1 run gamemode creative @s
execute if score @s cr.check.OtherworldGamemode matches 2 run gamemode adventure @s
execute if score @s cr.check.OtherworldGamemode matches 3 run gamemode spectator @s
execute unless score @s cr.check.OtherworldGamemode matches 0..3 run gamemode survival @s