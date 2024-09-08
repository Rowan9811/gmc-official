# load.mcfunction
# This function is called every time you run /reload, and when the world first starts.

# NOTE:
# Always set your gamerules, difficulty, time, and worldspawn in the load function!
# These are NOT SAVED when worlds restart at the moment.
gamerule doMobSpawning false
gamerule mobGriefing false

gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule keepInventory false

gamerule naturalRegeneration false

gamerule announceAdvancements false
gamerule commandModificationBlockLimit 999999999
gamerule doDaylightCycle false
time set noon

scoreboard objectives add phs dummy "phsgun"
scoreboard objectives add int dummy "inte"

scoreboard objectives add deathCount deathCount
scoreboard objectives setdisplay below_name deathCount
scoreboard objectives add killCount playerKillCount
scoreboard objectives setdisplay below_name killCount
scoreboard objectives add tutorial trigger
scoreboard objectives add gamemode trigger
scoreboard objectives add goto trigger


scoreboard objectives add death deathCount

function code:update
# To make sure your datapack is working, a load message can be useful.
tellraw @a { "color": "#00FF00", "text": "Loaded!"}
schedule function code:update2 1800s
# You can do whatever you want in the load function!
#give @a minecraft:sea_pickle[minecraft:enchantments={levels:{"minecraft:silk_touch":2}}]