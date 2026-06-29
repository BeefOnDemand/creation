# When called with another function as an argument, this function finds the caller's UUID storage reference and 
# executes the target funciton with it.
# This file passes the target function and an incrementing index (to prevent overwriting data) to the next step

execute if score [Creation] cr.tools.StorageIndex matches 1..4 run scoreboard players add [Creation] cr.tools.StorageIndex 1
execute if score [Creation] cr.tools.StorageIndex matches 5 run scoreboard players set [Creation] cr.tools.StorageIndex 1

execute store result storage creation:player/temporary/0 storage.index int 1 run scoreboard players get [Creation] cr.tools.StorageIndex
$data modify storage creation:player/temporary/0 storage.function set value "$(function)"
$data modify storage creation:player/temporary/0 storage.target set value "$(target)"

return run function creation:backend/tools/execute_with_uuid_storage/1 with storage creation:player/temporary/0 storage
