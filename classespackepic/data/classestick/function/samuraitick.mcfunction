#passive
execute if items entity @s[tag=samurai] weapon.mainhand #minecraft:swords run effect give @s minecraft:strength 1 0 true

#active
execute if entity @s[scores={samurai=1, timer=..0}, tag=samurai] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:dyed_color=1] at @s run function classespack:samuraiuse with entity @s
execute if entity @s[scores={samurai=1, timer=..0}, tag=samurai] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[!minecraft:dyed_color=1] run scoreboard players set @s samurai 0
