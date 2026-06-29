$tellraw @s [{text:"[System] ",color:gold},{text:"Getting stats of $(player)...",color:"gray"}]
tellraw @s ""
$tellraw @s ["",{text:"$(player) has entered creation "},{score:{name:"$(player)",objective:"cr.stats.TotalUses"}},{text:" times."}]
tellraw @s ""