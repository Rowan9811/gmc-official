title @a title {"color":"red","text":"Resetting Maps!"}
title @a subtitle "this will take a minute."
title @a times 0 10000s 1s


# gm_construct
fill -27 70 35 21 64 -37 air destroy
fill -27 90 35 21 84 -37 air destroy
fill -22 67 -16 -41 78 -16 air destroy
# walkways
fill -13 63 -37 -13 63 -22 white_concrete_powder destroy
fill -22 63 -17 21 63 -21 white_concrete_powder destroy
fill 24 63 -17 21 63 -21 white_concrete_powder destroy
fill -12 63 -43 3 63 -38 white_concrete_powder destroy
fill -13 63 -43 -13 63 -38 white_concrete_powder destroy
fill -38 63 -22 -25 63 -17 white_concrete_powder destroy

fill -16 63 17 21 63 -16 grass_block destroy
fill -19 63 18 21 63 35 grass_block destroy
fill -27 64 36 -18 64 36 grass_block destroy
fill -27 63 27 -20 63 35 grass_block destroy

fill -17 63 36 20 64 36 sand destroy

fill -37 64 101 -28 64 92 stone destroy
fill -37 64 91 -28 64 78 stone destroy
fill -23 64 77 -37 64 71 stone destroy
fill -28 64 39 -37 64 70 stone destroy
fill -28 63 27 -37 63 30 stone destroy
fill -28 64 38 -33 64 36 stone destroy

# fix the little diving platform
fill -22 64 76 -22 64 72 stone destroy
fill -21 64 73 -21 64 75 stone destroy

fill -28 64 31 -37 64 35 stone_slab destroy

fill -18 95 -22 -32 67 -39 smooth_stone destroy

fill -18 63 -39 -36 66 -22 smooth_stone_slab[type=double] destroy
fill -22 66 -30 -22 66 -31 smooth_stone_slab[type=top] destroy

fill -21 66 -34 -18 64 -27 air destroy
fill -22 65 -30 -22 64 -31 air destroy
fill -23 64 -23 -31 66 -38 air destroy
fill -19 64 -38 -22 66 -36 air destroy
fill -36 66 -39 -33 63 -22 air destroy
fill -18 66 -22 -19 64 -23 air destroy
fill -23 67 -23 -19 67 -38 calcite destroy

fill -12 63 -22 21 63 -37 light_gray_concrete destroy

#garage door (rowie: huh)
fill 4 63 -23 73 63 -43 light_gray_concrete destroy

# idk
fill -22 63 22 -36 63 -15 black_terracotta destroy

fill -17 63 -16 -21 63 8 smooth_stone destroy
fill -23 63 9 -17 63 17 smooth_stone destroy
fill -20 63 18 -23 63 22 smooth_stone destroy
fill -20 63 26 -33 63 23 smooth_stone destroy
#fill -18 95 -22 -18 66 -39 smooth_stone destroy

fill -14 63 -22 -31 63 -37 smooth_stone destroy
#fill -18 67 -26 -32 94 -22 smooth_stone destroy

#fill -23 94 -38 -18 67 -22 smooth_stone destroy

fill -21 69 -27 -21 64 -27 air destroy

fill -18 70 -23 -19 68 -22 air destroy
fill -18 74 -23 -19 72 -22 air destroy
fill -18 78 -23 -19 76 -22 air destroy
fill -18 82 -23 -19 80 -22 air destroy
fill -18 86 -23 -19 84 -22 air destroy
fill -18 90 -23 -19 88 -22 air destroy
fill -18 94 -23 -19 92 -22 air destroy

fill -23 64 8 -22 64 7 white_terracotta destroy
fill -34 67 23 -34 66 38 white_terracotta destroy
fill -24 66 22 -37 65 7 white_terracotta destroy
fill -37 66 -16 -22 65 8 white_terracotta destroy
fill -38 66 -55 -38 74 101 white_terracotta destroy

# concrete powder floor
fill -38 62 -17 21 62 -22 terracotta destroy
fill -13 62 -37 -13 62 -23 terracotta destroy
fill 21 62 -17 24 62 -22 terracotta destroy
fill -13 62 -43 -13 62 -38 terracotta destroy

# idk
fill -22 64 8 -37 64 -16 terracotta destroy
fill -34 64 23 -34 65 38 terracotta destroy
fill -24 64 22 -37 64 7 terracotta destroy
fill -38 65 101 -38 67 -55 terracotta destroy


fill -36 66 -15 -23 64 7 air destroy
fill -25 64 7 -35 66 21 air destroy
fill -36 64 8 -36 66 21 air destroy

fill -22 65 -11 -22 65 -8 air destroy
fill -22 65 -2 -22 65 -5 air destroy
fill -22 64 4 -22 65 3 air destroy
fill -24 64 17 -24 65 12 air destroy
fill -26 64 22 -31 65 22 air destroy

# the signs and buttons
setblock -36 65 20 stone_button[facing=east] destroy
setblock -36 65 18 stone_button[facing=east] destroy
setblock -36 65 16 stone_button[facing=east] destroy

setblock -36 66 20 oak_wall_sign[facing=east] destroy
setblock -36 66 18 oak_wall_sign[facing=east] destroy
setblock -36 66 16 oak_wall_sign[facing=east] destroy

data merge block -36 66 20 {front_text:{messages:['["creative mode"]','[""]','[""]','[""]'],has_glowing_text:1b},is_waxed:1b}
data merge block -36 66 18 {front_text:{messages:['["survival mode"]','[""]','[""]','[""]'],has_glowing_text:1b}} 
data merge block -36 66 16 {front_text:{messages:['["go back to Hub"]','[""]','[""]','[""]'],has_glowing_text:1b}} 

fill -22 67 -16 -37 67 38 deepslate_brick_slab destroy

fill -18 95 -22 -32 95 -39 deepslate_brick_slab destroy

# the spawn staircase
fill -37 66 35 -35 66 35 deepslate_brick_slab[type=top] destroy
fill -37 66 36 -35 66 36 deepslate_brick_slab destroy
fill -37 65 37 -35 65 37 deepslate_brick_slab[type=top] destroy
fill -37 65 38 -35 65 38 deepslate_brick_slab destroy

# garage roof
fill 3 73 -22 50 73 -43 deepslate_brick_slab destroy 

# line 3 at garage
fill 17 73 -25 19 73 -28 air destroy
fill 18 73 -32 20 73 -29 air destroy
fill 19 73 -36 21 73 -33 air destroy
fill 20 73 -40 22 73 -37 air destroy

# line 2 at garage
fill 12 73 -25 14 73 -28 air destroy
fill 13 73 -32 15 73 -29 air destroy
fill 14 73 -36 16 73 -33 air destroy
fill 15 73 -40 17 73 -37 air destroy

# line 1 at garage
fill 9 73 -25 7 73 -28 air destroy
fill 8 73 -32 10 73 -29 air destroy
fill 11 73 -33 9 73 -36 air destroy
fill 10 73 -40 12 73 -37 air destroy

# the walkway right next to garage at the top part of the roof
fill 50 73 -17 55 73 -43 diorite destroy
# the other walkway
fill 50 73 -17 73 73 -21 diorite destroy
# and the grass
fill 56 73 -43 73 73 -22 grass_block destroy

# extendo the lawn
fill 21 63 -16 75 63 99 grass_block destroy

# the floor of the garage
fill 20 63 -22 23 63 -22 light_gray_concrete destroy

# bricks of the garage
fill 3 64 -22 73 72 -22 bricks destroy
fill 3 72 -22 3 64 -43 bricks destroy
fill 3 72 -43 73 63 -43 bricks destroy

# garage car hole line
fill 3 69 -40 3 64 -25 light_gray_concrete destroy

# extendo the floor at the entrance of the garage
fill -12 63 -43 3 63 -28 light_gray_concrete destroy
fill -14 63 -37 -17 63 -43 smooth_stone destroy

# punch out holes for the garage
fill 23 66 -22 20 64 -22 air destroy
fill 3 68 -39 3 64 -26 air destroy

fill -22 67 38 -23 67 9 air destroy
fill -24 67 38 -33 67 23 air destroy
fill -35 67 35 -37 67 38 air destroy

# done with gm_construct

kill @e[type=!player,tag=!dcor]

title @a times 0 10t 1s