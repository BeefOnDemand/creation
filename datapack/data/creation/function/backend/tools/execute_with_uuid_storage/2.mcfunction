# This function is step 3, and executes the target function with a reference to the function caller's UUID storage file 
# made up of the tag pieces from step 2.

$execute if data storage creation:player/$(uuid_1)_$(uuid_2)_$(uuid_3)_$(uuid_4) player.UUID run return run function $(function) with storage creation:player/$(uuid_1)_$(uuid_2)_$(uuid_3)_$(uuid_4) player

$data modify storage creation:player/$(uuid_1)_$(uuid_2)_$(uuid_3)_$(uuid_4) player.uuid set value "$(uuid_1)_$(uuid_2)_$(uuid_3)_$(uuid_4)"
$data modify storage creation:player/$(uuid_1)_$(uuid_2)_$(uuid_3)_$(uuid_4) player.UUID set from entity $(target) UUID

$return run function $(function) with storage creation:player/$(uuid_1)_$(uuid_2)_$(uuid_3)_$(uuid_4) player