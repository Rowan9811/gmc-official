# tick.mcfunction
# Any commands placed here will run every tick, like a repeating command block.

# Example: Create some flame particles at your feet when standing on a magma block.
# execute as @a at @s if block ~ ~-1 ~ magma_block run particle flame ~ ~ ~ 0.125 0.0 0.125 0.05 1

# Example 2: Predicates
# Predicates let you easily check things that are otherwise complicated to detect. 
# We check if a player is sneaking, then give them a potion effect.
# execute as @a at @s if predicate code:is_sneaking run effect give @s regeneration 1 0
gamemode adventure @a[tag=!setup]
execute if entity @a[tag=!setup] run summon interaction 0 0 0 {height:1,width:1}
tag @a add setup
kill @e[type=tnt_minecart]
#execute at @e[type=fireball] run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1b,Invisible:1b}
#kill @e[type=fireball]
#execute at @e[type=small_fireball] run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1b,Invisible:1b}
kill @e[type=small_fireball]
execute at @e[nbt={fuse:1s},type=tnt] run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1b}
kill @e[nbt={fuse:1s},type=tnt]

execute at @e[nbt={fuse:0s},type=tnt] run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1b}
kill @e[nbt={fuse:0s},type=tnt]

gamerule sendCommandFeedback true

execute at RowieTrek if items entity @p weapon.mainhand amethyst_shard[custom_data={tag:mm_ph_gun}] run tp @e[type=interaction] ~ ~1 ~
execute at RowieTrek unless items entity @p weapon.mainhand amethyst_shard[custom_data={tag:mm_ph_gun}] run tp @e[type=interaction] 0 0 0
#kill @e[type=potion,nbt={CustomName:"DEATH"}]
scoreboard players enable @a tutorial
scoreboard players enable @a gamemode
scoreboard players enable @a goto



tellraw @p[scores={tutorial=1..}] {"clickEvent":{"action":"open_url","value":"https://docs.google.com/document/d/1XUSlt621eQi3wYangJgjcNcshB2oN9z7ZehwvHuuotQ"},"text":"[open tutorial]","color": "#00ff00"}
scoreboard players reset @a[scores={tutorial=1..}] tutorial
gamemode creative @a[scores={gamemode=2},gamemode=!adventure] 

execute as @a[scores={gamemode=2},gamemode=!adventure] run tellraw @s ["",{"text": "Set own game mode to Creative Mode"}]
execute as @a[scores={gamemode=2},gamemode=!adventure] run tellraw @a[distance=0..] ["",{"text":"[","italic":true,"color":"gray"},{"selector":"@s","italic":true,"color":"gray"},{"text":":Set own game mode to Creative Mode]","italic":true,"color":"gray"}]

scoreboard players reset @p[scores={gamemode=2}] gamemode
gamemode survival @p[scores={gamemode=1},gamemode=!adventure]

execute as @a[scores={gamemode=1},gamemode=!adventure] run tellraw @s ["",{"text": "Set own game mode to Survival Mode"}]
execute as @a[scores={gamemode=1},gamemode=!adventure] run tellraw @a[distance=0..] ["",{"text":"[","italic":true,"color":"gray"},{"selector":"@s","italic":true,"color":"gray"},{"text":":Set own game mode to Survival Mode]","italic":true,"color":"gray"}]

scoreboard players reset @a[scores={gamemode=1}] gamemode

tellraw @a[scores={gamemode=1..},gamemode=adventure] ["",{"color": "#FF0000","text": "Could not change gamemode you are in gm_hub"}]

execute as @a[scores={goto=1}] run function code:gm_hub
execute as @a[scores={goto=2}] run function code:gm_construct
execute as @a[scores={goto=3}] run function code:gm_community
scoreboard players reset @a[scores={goto=1..}] goto

gamemode adventure @a[scores={death=1..}]
execute at @a[scores={death=1..},tag=!is_admin] run tp 16.70 107.00 1000008.50
scoreboard players reset @a death

execute as @p if entity @p[y=-63,dy=-63] run tp @s 16 107 10008
setblock -9963 98 -1 diamond_block keep
tp @e[type=block_display,tag=tran] @e[type=minecart,tag=trancart,limit=1,sort=nearest]
setblock -41 63 16 redstone_torch
setblock 24 112 1000008 redstone_torch
execute if items entity @p weapon.mainhand saddle[custom_model_data=99,custom_name='["",{"text":"The Ridelator","italic":false}]'] as @p run function code:tr
execute unless items entity @p weapon.mainhand saddle[custom_model_data=99,custom_name='["",{"text":"The Ridelator","italic":false}]'] as @p run tag @s remove dd
#execute as @e[type=interaction,tag=!phsgunint] run players add @s phs @a[tag=!setup,limit=1]

