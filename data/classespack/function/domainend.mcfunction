execute at @e[tag=domain] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace minecraft:black_concrete
execute at @e[tag=domain] as @a[distance=..10] run attribute @s minecraft:generic.jump_strength base set 0.41999998688697815
kill @e[type=armor_stand,limit=1,tag=domain]
execute as @a run attribute @s[tag=!berserk] generic.attack_speed base set 4.0
execute as @a run attribute @s[tag=berserk] generic.attack_speed base set 4.2
gamemode survival @a