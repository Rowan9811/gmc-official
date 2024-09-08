scoreboard players set #bool int 0
execute on target store result score #bool int if entity @s[tag=this]

execute if score #bool int matches 1 at @s run particle happy_villager ~ ~0.5 ~ 0 0 0 0 1

execute if score #bool int matches 1 run data remove entity @s interaction