advancement revoke @s only code:left_click

# Detect when the player is looking at a block that is within reach
#execute store result score $max_distance phs run attribute @s minecraft:player.block_interaction_range get 1000000
#execute at @s anchored eyes positioned ^ ^ ^ store result score $distance phs run function iris:get_target
#title @s title ""
#summon block_display ~ ~ ~ {billboard:"center",item:{id:"minecraft:white_tulip",Count:1}}
#tag @e[type=block_display,limit=1,sort=nearest] add pos

#data modify entity @e[type=block_display,limit=1,sort=nearest,tag=pos] Pos merge from storage iris:output
#execute at @e[type=block_display,limit=1,sort=nearest,tag=pos] run loot give @s mine ~ ~ ~
#execute if score $distance phs <= $max_distance phs at @e[type=minecraft:marker, tag=iris.targeted_block] run title @s title "Looking at a block"
#title @s times 0 0.5s 0.5s

say [db] left


tag @s add this1
#execute as @e[type=interaction,distance=..6] run function code:find_attacked
tag @s remove this1