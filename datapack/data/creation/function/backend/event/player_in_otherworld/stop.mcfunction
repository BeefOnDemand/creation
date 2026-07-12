advancement revoke @s only creation:backend/event/player_in_otherworld/stop

execute if predicate creation:logging_events run tellraw @a[predicate=creation:viewing_events] [{"text":"[EVENT] ",color:"gray"},{"selector":"@s","italic":true},{"text":" exited Otherworld.",color:"gray","italic":true}]

scoreboard players set @s cr.event.InOtherworld 0

function creation:backend/tools/execute_with_uuid_storage/0 {function: "creation:backend/inventory/otherworld/save", target: "@s"}
function creation:backend/inventory/load