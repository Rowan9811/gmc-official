advancement revoke @s only code:right_click



say [dp] right

tag @s add this
execute as @e[type=interaction,distance=..6] run function code:find_targeted
tag @s remove this