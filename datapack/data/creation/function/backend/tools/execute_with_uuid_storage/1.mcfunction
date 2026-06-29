# This function is step 2, and loads the function caller's 4-part UUID tag into storage.
# The target function and UUID tag pieces are passed to step 3.

$data modify storage creation:player/temporary/$(index) player.uuid_1 set from entity $(target) UUID[0]
$data modify storage creation:player/temporary/$(index) player.uuid_2 set from entity $(target) UUID[1]
$data modify storage creation:player/temporary/$(index) player.uuid_3 set from entity $(target) UUID[2]
$data modify storage creation:player/temporary/$(index) player.uuid_4 set from entity $(target) UUID[3]
$data modify storage creation:player/temporary/$(index) player.function set value "$(function)"
$data modify storage creation:player/temporary/$(index) player.target set value "$(target)"

$return run function creation:backend/tools/execute_with_uuid_storage/2 with storage creation:player/temporary/$(index) player