$data modify storage creation:player/$(uuid) player.bed.creation.dimension set from entity @s Dimension

$data modify storage creation:player/$(uuid) player.bed.creation.x set from block ~ ~ ~ x
$data modify storage creation:player/$(uuid) player.bed.creation.y_bed set from block ~ ~ ~ y
$data modify storage creation:player/$(uuid) player.bed.creation.y set from entity @s Pos[1]
$data modify storage creation:player/$(uuid) player.bed.creation.z set from block ~ ~ ~ z