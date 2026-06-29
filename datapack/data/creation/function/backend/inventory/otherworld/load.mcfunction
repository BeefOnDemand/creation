$execute unless data storage creation:player/$(uuid) player.inventory.otherworld[-1].components run data modify storage creation:player/$(uuid) player.inventory.otherworld[-1].components set value {}
$execute store result score @s cr.check.InventorySlot run data get storage creation:player/$(uuid) player.inventory.otherworld[-1].Slot
$execute if score @s cr.check.InventorySlot matches 0..35 run function creation:backend/inventory/restore/container_slot with storage creation:player/$(uuid) player.inventory.otherworld[-1]
$execute unless score @s cr.check.InventorySlot matches 0..35 run function creation:backend/inventory/restore/equipment_slot with storage creation:player/$(uuid) player.inventory.otherworld[-1]
$data remove storage creation:player/$(uuid) player.inventory.otherworld[-1]
$execute if data storage creation:player/$(uuid) player.inventory.otherworld[-1] run function creation:backend/inventory/otherworld/load with storage creation:player/$(uuid) player