tellraw @s [{text:"[System] ",color:gold},{text:"Getting info of Creation...",color:"gray"}]
tellraw @s ""
tellraw @s ["",{text:"Creation ",bold:true,color:gold},{storage:"creation:datapack",nbt:"pack.version",color:yellow,interpret:true}]
execute if score [Creation] cr.dpack.Enabled matches 1 run tellraw @s ["",{text:"- Enabled: "},{text:"yes",color:green}]
execute if score [Creation] cr.dpack.Enabled matches 0 run tellraw @s ["",{text:"- Enabled: "},{text:"no",color:red}]
execute if data storage creation:datapack pack.initialized run tellraw @s ["",{text:"- Initialized: "},{text:"yes",color:green}]
execute unless data storage creation:datapack pack.initialized run tellraw @s ["",{text:"- Initialized: "},{text:"no",color:red}]
tellraw @s ["",{text:"Version notes: \n",bold:true,color:yellow},{storage:"creation:datapack",nbt:"pack.changes",interpret:true}]
tellraw @s ""