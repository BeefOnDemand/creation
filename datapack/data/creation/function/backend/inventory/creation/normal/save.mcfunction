$data modify storage creation:player/$(uuid) player.inventory.creation.normal set from entity @s Inventory
$execute if items entity @s weapon.offhand * run data modify storage creation:player/$(uuid) player.inventory.creation.normal append value {Type:"weapon", Subtype:"offhand", Slot:-106}
$data modify storage creation:player/$(uuid) player.inventory.creation.normal[-1] merge from entity @s equipment.offhand
$execute if items entity @s armor.feet * run data modify storage creation:player/$(uuid) player.inventory.creation.normal append value {Type:"armor", Subtype:"feet", Slot:100}
$data modify storage creation:player/$(uuid) player.inventory.creation.normal[-1] merge from entity @s equipment.feet
$execute if items entity @s armor.legs * run data modify storage creation:player/$(uuid) player.inventory.creation.normal append value {Type:"armor", Subtype:"legs", Slot:101}
$data modify storage creation:player/$(uuid) player.inventory.creation.normal[-1] merge from entity @s equipment.legs
$execute if items entity @s armor.chest * run data modify storage creation:player/$(uuid) player.inventory.creation.normal append value {Type:"armor", Subtype:"chest", Slot:102}
$data modify storage creation:player/$(uuid) player.inventory.creation.normal[-1] merge from entity @s equipment.chest
$execute if items entity @s armor.head * run data modify storage creation:player/$(uuid) player.inventory.creation.normal append value {Type:"armor", Subtype:"head", Slot:103}
$data modify storage creation:player/$(uuid) player.inventory.creation.normal[-1] merge from entity @s equipment.head