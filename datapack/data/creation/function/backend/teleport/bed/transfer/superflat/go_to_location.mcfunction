$execute in $(dimension) unless entity @s[tag=cr.tag.ForceloadedTransferSuperflatChunk] store success score @s cr.check.PermanentChunk run forceload query $(x) $(z)
$execute in $(dimension) store success score @s cr.check.LoadedChunk run forceload query $(x) $(z)

$execute in $(dimension) if score @s cr.check.PermanentChunk matches 0 run forceload add $(x) $(z)
$execute in $(dimension) if score @s cr.check.PermanentChunk matches 0 run tag @s add cr.tag.ForceloadedTransferSuperflatChunk

$execute at @s as @a[distance=..1.5,sort=furthest,predicate=creation:on_superflat_transfer_bed,predicate=!creation:sneaking] in $(dimension) if block $(x) $(y_bed) $(z) minecraft:white_bed run tp $(x) $(y) $(z)
$execute in $(dimension) if block $(x) $(y_bed) $(z) minecraft:white_bed run return run tp $(x) $(y) $(z)