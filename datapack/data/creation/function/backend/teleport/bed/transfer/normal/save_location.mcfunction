$data modify storage creation:player/$(uuid) player.bed.transfer.normal.dimension set from entity @s Dimension

$data modify storage creation:player/$(uuid) player.bed.transfer.normal.x set from block ~ ~ ~ x
$data modify storage creation:player/$(uuid) player.bed.transfer.normal.y_bed set from block ~ ~ ~ y
$data modify storage creation:player/$(uuid) player.bed.transfer.normal.y set from entity @s Pos[1]
$data modify storage creation:player/$(uuid) player.bed.transfer.normal.z set from block ~ ~ ~ z