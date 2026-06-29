execute unless score @s cr.check.TeleportSuccess matches 1 run scoreboard players set @s cr.check.TeleportSuccess 0
execute unless score @s cr.check.PermanentChunk matches 1 run scoreboard players set @s cr.check.PermanentChunk 0
execute unless score @s cr.check.LoadedChunk matches 1 run scoreboard players set @s cr.check.LoadedChunk 0

scoreboard players set @s[gamemode=survival] cr.track.PlayerGamemode 0
scoreboard players set @s[gamemode=creative] cr.track.PlayerGamemode 1
scoreboard players set @s[gamemode=adventure] cr.track.PlayerGamemode 2
scoreboard players set @s[gamemode=spectator] cr.track.PlayerGamemode 3

execute unless score @s cr.admin.PlayerBanned matches 1 run scoreboard players set @s cr.admin.PlayerBanned 0
execute unless score @s cr.admin.PlayerOnProbation matches 1 run scoreboard players set @s cr.admin.PlayerOnProbation 0
execute unless score @s cr.admin.PlayerDebugging matches 1 run scoreboard players set @s cr.admin.PlayerDebugging 0

execute unless score @s cr.event.InCreation matches 1.. run scoreboard players set @s cr.event.InCreation 0
execute unless score @s cr.event.InSuperflat matches 1.. run scoreboard players set @s cr.event.InSuperflat 0
execute unless score @s cr.event.InNormal matches 1.. run scoreboard players set @s cr.event.InNormal 0
execute unless score @s cr.event.SneakingOnCreationBed matches 1.. run scoreboard players set @s cr.event.SneakingOnCreationBed 0
execute unless score @s cr.event.SteppingOnCreationBed matches 1.. run scoreboard players set @s cr.event.SteppingOnCreationBed 0
execute unless score @s cr.event.SneakingOnNormalTransferBed matches 1.. run scoreboard players set @s cr.event.SneakingOnNormalTransferBed 0
execute unless score @s cr.event.SteppingOnNormalTransferBed matches 1.. run scoreboard players set @s cr.event.SteppingOnNormalTransferBed 0
execute unless score @s cr.event.SneakingOnSuperflatTransferBed matches 1.. run scoreboard players set @s cr.event.SneakingOnSuperflatTransferBed 0
execute unless score @s cr.event.SteppingOnSuperflatTransferBed matches 1.. run scoreboard players set @s cr.event.SteppingOnSuperflatTransferBed 0
execute unless score @s cr.event.InOtherworld matches 1.. run scoreboard players set @s cr.event.InOtherworld 0
execute unless score @s cr.event.SneakingOnOtherworldBed matches 1.. run scoreboard players set @s cr.event.SneakingOnOtherworldBed 0
execute unless score @s cr.event.SteppingOnOtherworldBed matches 1.. run scoreboard players set @s cr.event.SteppingOnOtherworldBed 0

scoreboard players set @s cr.admin.PlayerInitialized 1