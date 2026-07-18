# Checkup commands for every connected player (runs once per second)
advancement revoke @s only creation:backend/event/player_exists/trigger

# Enable creation for all players unless defaults were changed by admin
execute if score [Creation] cr.setts.EnablePlayersByDefault matches 1 run tag @s[predicate=!creation:creation_user] add cr.tag.CreationUser

# If creation user lost all advancements, restore creation functionality
advancement grant @s[tag=cr.tag.CreationUser,predicate=!creation:creation_user] only creation:backend/event/player_entered_creation_for_first_time

# Display a creation update message to the user if they haven't seen it yet
execute unless score @s cr.dpack.Updated = [Creation] cr.dpack.Updated run scoreboard players set @s cr.check.ConditionsPassed 1
execute if score @s cr.check.ConditionsPassed matches 1 run scoreboard players operation @s cr.dpack.Updated = [Creation] cr.dpack.Updated
execute if score @s cr.check.ConditionsPassed matches 1 if predicate creation:creation_user run function creation:backend/alert/datapack_updated
scoreboard players set @s cr.check.ConditionsPassed 0