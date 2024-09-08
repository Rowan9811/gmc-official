data merge entity @s {NoGravity:1b}
execute if entity @s[nbt={inGround:1b}] at @s run summon creeper ~ ~ ~ {Invulnerable:1b,Fuse:0,ExplosionRadius:3,CustomName:"a rocket",CustomNameVisible:true}
kill @s[nbt={inGround:1b}]