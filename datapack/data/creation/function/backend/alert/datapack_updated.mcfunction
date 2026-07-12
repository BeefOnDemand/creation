tellraw @s ""
tellraw @s ["",{text:"Creation ",bold:true,color:gold},{text:"has been updated to "},{storage:"creation:datapack",nbt:"pack.version",color:yellow,interpret:true}]
tellraw @s ""
tellraw @s ["",{text:"Version notes: \n",bold:true,color:yellow},{storage:"creation:datapack",nbt:"pack.changes",interpret:true}]