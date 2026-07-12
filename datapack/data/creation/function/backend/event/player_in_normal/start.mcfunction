advancement revoke @s only creation:backend/event/player_in_normal/start

execute if predicate creation:logging_events run tellraw @a[predicate=creation:viewing_events] [{"text":"[EVENT] ",color:"gray"},{"selector":"@s","italic":true},{"text":" entered Normal.",color:"gray","italic":true}]

scoreboard players set @s cr.event.InNormal 1

tag @s remove cr.tag.SuperflatTransferTeleportUsed
tag @s remove cr.tag.StillOnNormalTransferBed
tag @s remove cr.tag.StillWakingUpInSuperflat
