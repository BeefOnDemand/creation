execute if data storage creation:datapack pack.history.1_0_0 run return fail
data modify storage creation:datapack pack.history.1_0_0 set value ""
execute unless data storage creation:datapack pack.origin run data modify storage creation:datapack pack.origin.1_0_0 set value ""
data modify storage creation:datapack pack.version set value "v1.0.0"
data modify storage creation:datapack pack.changes set value '\
* The very first published release of Creation! \n\
'

function creation:backend/pack/patch/check
scoreboard players add [Creation] cr.dpack.Updated 1