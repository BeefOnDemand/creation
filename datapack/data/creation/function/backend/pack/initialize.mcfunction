scoreboard players set [Creation] cr.tools.ReinitializePack 0

# Find and store overworld spawn coordinates as the default teleport location for the otherworld
summon minecraft:marker ~ ~ ~ {CustomName:"cr.WorldSpawnMarker"}
execute as @e[type=minecraft:marker,name="cr.WorldSpawnMarker",limit=1] run function creation:backend/tools/set_default_otherworld_location_at_player
data modify storage creation:world/otherworld world.default.dimension set value "minecraft:overworld"
kill @e[type=minecraft:marker,name="cr.WorldSpawnMarker",limit=1]

# Set default teleport location for superflat creation
data modify storage creation:world/creation world.superflat.default.dimension set value "creation:superflat"
data modify storage creation:world/creation world.superflat.default.x set value 0
data modify storage creation:world/creation world.superflat.default.y set value 0
data modify storage creation:world/creation world.superflat.default.z set value 0

# Set default teleport location for normal creation
data modify storage creation:world/creation world.normal.default.dimension set value "creation:normal"
data modify storage creation:world/creation world.normal.default.x set value 0
data modify storage creation:world/creation world.normal.default.y set value 300
data modify storage creation:world/creation world.normal.default.z set value 0

# Finish initilization
data modify storage creation:datapack pack.initialized set value "yes"
scoreboard players set [Creation] cr.dpack.Enabled 1