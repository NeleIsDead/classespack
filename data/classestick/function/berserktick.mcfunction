#Passive
execute as @s run attribute @s minecraft:generic.attack_speed base set 4.2

#Active
execute if entity @s[scores={berserk=1, timer=..0}, tag=berserk] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:dyed_color=3] at @s run function classespack:berserkuse with entity @s
execute if entity @s[scores={berserk=1, timer=..0, timer=..0}, tag=berserk] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[!minecraft:dyed_color=3] run scoreboard players set @s berserk 0