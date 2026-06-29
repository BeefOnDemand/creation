tellraw @s {text:"Player Info",color:green}
$tellraw @s [{text:" -- UUID: ",color:yellow},{"storage":"creation:player/$(uuid)","nbt":"player.uuid",color:white}]
$tellraw @s [{text:" -- Initialized: ",color:yellow},{"storage":"creation:player/$(uuid)","nbt":"player.initialized",color:white}]

tellraw @s {text:"Bed Locations",color:green}
tellraw @s {text:" - Otherworld",color:aqua}
$tellraw @s [{text:" -- Dimension: ",color:yellow},{"storage":"creation:player/$(uuid)","nbt":"player.bed.otherworld.dimension",color:white}]
$tellraw @s [{text:" -- Coordinates: ",color:yellow},{"storage":"creation:player/$(uuid)","nbt":"player.bed.otherworld.x",color:white},{text:" "},{"storage":"creation:player/$(uuid)","nbt":"player.bed.otherworld.y",color:white},{text:" "},{"storage":"creation:player/$(uuid)","nbt":"player.bed.otherworld.z",color:white}]
tellraw @s {text:" - Creation",color:gold}
$tellraw @s [{text:" -- Dimension: ",color:yellow},{"storage":"creation:player/$(uuid)","nbt":"player.bed.creation.dimension",color:white}]
$tellraw @s [{text:" -- Coordinates: ",color:yellow},{"storage":"creation:player/$(uuid)","nbt":"player.bed.creation.x",color:white},{text:" "},{"storage":"creation:player/$(uuid)","nbt":"player.bed.creation.y",color:white},{text:" "},{"storage":"creation:player/$(uuid)","nbt":"player.bed.creation.z",color:white}]
tellraw @s {text:" - Normal",color:white}
$tellraw @s [{text:" -- Dimension: ",color:yellow},{"storage":"creation:player/$(uuid)","nbt":"player.bed.transfer.normal.dimension",color:white}]
$tellraw @s [{text:" -- Coordinates: ",color:yellow},{"storage":"creation:player/$(uuid)","nbt":"player.bed.transfer.normal.x",color:white},{text:" "},{"storage":"creation:player/$(uuid)","nbt":"player.bed.transfer.normal.y",color:white},{text:" "},{"storage":"creation:player/$(uuid)","nbt":"player.bed.transfer.normal.z",color:white}]
tellraw @s {text:" - Superflat",color:white}
$tellraw @s [{text:" -- Dimension: ",color:yellow},{"storage":"creation:player/$(uuid)","nbt":"player.bed.transfer.superflat.dimension",color:white}]
$tellraw @s [{text:" -- Coordinates: ",color:yellow},{"storage":"creation:player/$(uuid)","nbt":"player.bed.transfer.superflat.x",color:white},{text:" "},{"storage":"creation:player/$(uuid)","nbt":"player.bed.transfer.superflat.y",color:white},{text:" "},{"storage":"creation:player/$(uuid)","nbt":"player.bed.transfer.superflat.z",color:white}]