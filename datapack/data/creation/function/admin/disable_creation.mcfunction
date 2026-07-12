scoreboard players set [Creation] cr.dpack.Enabled 0

tellraw @s [{text:"[System] ",color:gold},{text:"Creation disabled.",color:"gray"}]

execute as @a[predicate=creation:in_creation] run function creation:backend/teleport/default/otherworld/use

execute as @a[predicate=creation:creation_user] run function creation:backend/alert/creation_disabled