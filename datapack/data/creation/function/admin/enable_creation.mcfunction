scoreboard players set [Creation] cr.admin.PackEnabled 1

tellraw @s [{text:"[System] ",color:gold},{text:"Creation enabled.",color:"gray"}]

execute as @a[predicate=creation:creation_user] run function creation:backend/alert/creation_enabled