advancement revoke @s only creation:backend/event/player_in_otherworld/start

execute if predicate creation:logging_events run tellraw @a[predicate=creation:viewing_events] [{"text":"[EVENT] ",color:"gray"},{"selector":"@s","italic":true},{"text":" entered Otherworld.",color:"gray","italic":true}]

scoreboard players set @s cr.event.InOtherworld 1

execute unless predicate creation:creation_user run return fail

team leave @s[predicate=creation:on_creation_team]

tag @s remove cr.tag.NewPlayer

tag @s remove cr.tag.CreationTeleportUsed
tag @s remove cr.tag.StillWakingUpInCreation
tag @s remove cr.tag.StillOnOtherworldBed