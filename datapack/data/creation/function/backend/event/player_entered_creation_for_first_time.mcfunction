# Don't run new player code if lost advancement is being restored
execute as @s[tag=cr.tag.CreationUser] run return fail

# Display welcome title
function creation:backend/alert/player_discovered_creation

# Add tag for new player so that special commands run on first exit from Creation
tag @s add cr.tag.NewPlayer

# Add tag for creation user as a backup for advancements being lost/cleared
tag @s add cr.tag.CreationUser