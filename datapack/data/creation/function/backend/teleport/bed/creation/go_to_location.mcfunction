$execute in $(dimension) unless entity @s[tag=cr.tag.ForceloadedCreationChunk] store success score @s cr.check.PermanentChunk run forceload query $(x) $(z)
$execute in $(dimension) store success score @s cr.check.LoadedChunk run forceload query $(x) $(z)

$execute in $(dimension) if score @s cr.check.PermanentChunk matches 0 run forceload add $(x) $(z)
$execute in $(dimension) if score @s cr.check.PermanentChunk matches 0 run tag @s add cr.tag.ForceloadedCreationChunk

$execute at @s as @a[distance=..1.5,sort=furthest,predicate=creation:on_creation_bed,predicate=!creation:sneaking,predicate=creation:creation_user] in $(dimension) if block $(x) $(y_bed) $(z) minecraft:light_blue_bed run tp $(x) $(y) $(z)
$execute in $(dimension) if block $(x) $(y_bed) $(z) minecraft:light_blue_bed run return run tp $(x) $(y) $(z)