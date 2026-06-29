advancement revoke @s only creation:backend/event/player_in_otherworld/start

scoreboard players set @s cr.event.InOtherworld 1

execute if predicate creation:debugging run tellraw @a[tag=cr.tag.Debugger] [{"text":"[DEBUG] ",color:"gray"},{"selector":"@s","italic":true},{"text":" exited creation.",color:"gray","italic":true}]

execute unless predicate creation:creation_user run return fail

team leave @s[predicate=creation:on_creation_team]

tag @s remove cr.tag.NewPlayer

tag @s remove cr.tag.CreationTeleportUsed