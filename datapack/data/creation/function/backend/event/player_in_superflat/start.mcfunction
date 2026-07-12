advancement revoke @s only creation:backend/event/player_in_superflat/start

execute if predicate creation:logging_events run tellraw @a[predicate=creation:viewing_events] [{"text":"[EVENT] ",color:"gray"},{"selector":"@s","italic":true},{"text":" entered Superflat.",color:"gray","italic":true}]

scoreboard players set @s cr.event.InSuperflat 1

tag @s remove cr.tag.NormalTransferTeleportUsed
tag @s remove cr.tag.StillOnSuperflatTransferBed
tag @s remove cr.tag.StillWakingUpInNormal