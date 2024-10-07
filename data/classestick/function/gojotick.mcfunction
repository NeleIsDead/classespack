execute if entity @s[scores={gojo=1, timer=..0}, tag=gojo] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:dyed_color=6] at @s run function classespack:gojouse with entity @s
execute if entity @s[scores={gojo=1, timer=..0}, tag=gojo] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[!minecraft:dyed_color=6] run scoreboard players set @s gojo 0
execute at @s as @e[tag=domain,distance=..6,type=armor_stand] run effect give @a[distance=..6,tag=!gojo] slowness 1 255 true
execute at @s as @e[tag=domain,distance=..6,type=armor_stand] run effect give @a[distance=..6,tag=!gojo] weakness 1 255 true
execute at @s as @e[tag=domain,distance=..6,type=armor_stand] as @a[distance=..6,limit=1,tag=!gojo,sort=nearest] run attribute @s[tag=!gojo] minecraft:generic.jump_strength base set 0
execute at @s as @e[tag=domain,distance=..6,type=armor_stand] as @a[distance=..6,limit=1,tag=!gojo,sort=nearest] run attribute @s[tag=!gojo] minecraft:generic.attack_speed base set 0
execute at @s as @e[tag=domain,distance=..6,type=armor_stand] as @a[distance=..6,limit=1,tag=!gojo,sort=nearest] run gamemode adventure @s[tag=!gojo]
