$tellraw @s [{text:"[System] ",color:gold},{text:"Getting storage of $(player)...",color:"gray"}]
$execute if score $(player) cr.alert.PlayerQuit matches 1 run return run tellraw @s [{text:"[System] ",color:gold},{text:"Player does not yet have storage!",color:"gray"}]
tellraw @s ""
$function creation:backend/tools/execute_with_uuid_storage/0 {function:"creation:backend/tools/access_player_storage", target:"$(player)"}
tellraw @s ""