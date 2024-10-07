
#Active
execute if entity @s[scores={tank=1, timer=..0}, tag=tank] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:dyed_color=2] at @s run function classespack:tankuse with entity @s
execute if entity @s[scores={tank=1, timer=..0}, tag=tank] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[!minecraft:dyed_color=2] run scoreboard players set @s tank 0

#Passive
attribute @s[tag=tank] generic.max_health base set 32
attribute @s[tag=tank] generic.gravity base set 0.09
attribute @s[tag=tank] generic.knockback_resistance base set 0.1
execute as @a[tag=tank, scores={tank=0}] run effect give @s slowness 1 0 true