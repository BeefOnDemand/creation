advancement revoke @s only creation:backend/event/player_gamemode_changed

scoreboard players set @s[gamemode=survival] cr.track.PlayerGamemode 0
scoreboard players set @s[gamemode=creative] cr.track.PlayerGamemode 1
scoreboard players set @s[gamemode=adventure] cr.track.PlayerGamemode 2
scoreboard players set @s[gamemode=spectator] cr.track.PlayerGamemode 3

execute if predicate creation:in_creation unless predicate creation:on_probation unless score @s cr.track.PlayerGamemode matches 3 run gamemode creative @s
execute if predicate creation:in_creation if predicate creation:on_probation unless score @s cr.track.PlayerGamemode matches 2 run gamemode adventure @s