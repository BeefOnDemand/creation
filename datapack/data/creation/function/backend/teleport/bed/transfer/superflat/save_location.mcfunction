$data modify storage creation:player/$(uuid) player.bed.transfer.superflat.dimension set from entity @s Dimension

$data modify storage creation:player/$(uuid) player.bed.transfer.superflat.x set from block ~ ~ ~ x
$data modify storage creation:player/$(uuid) player.bed.transfer.superflat.y_bed set from block ~ ~ ~ y
$data modify storage creation:player/$(uuid) player.bed.transfer.superflat.y set from entity @s Pos[1]
$data modify storage creation:player/$(uuid) player.bed.transfer.superflat.z set from block ~ ~ ~ z