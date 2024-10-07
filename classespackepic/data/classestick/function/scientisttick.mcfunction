#Passive effects
effect give @e[tag=scientist] speed 1 0 true

execute if entity @s[scores={scientist=1, timer=..0}, tag=scientist] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:dyed_color=5] at @s run function classespack:summonportal1 with entity @s
execute if entity @s[scores={scientist=1, timer=..0}, tag=scientist] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[!minecraft:dyed_color=5] run scoreboard players set @s scientist 0

execute if entity @s[scores={scientist=1, timer=..0}, tag=scientist] if items entity @s weapon.offhand minecraft:warped_fungus_on_a_stick[minecraft:dyed_color=5] at @s run function classespack:summonportal2 with entity @s
execute if entity @s[scores={scientist=1, timer=..0}, tag=scientist] if items entity @s weapon.offhand minecraft:warped_fungus_on_a_stick[!minecraft:dyed_color=5] run scoreboard players set @s scientist 0

execute as @a[tag=!hasportalcodeplayers, tag=scientist] run scoreboard players operation @a[scores={portalcodes=1..}] portalcodes += var1 portalcodes
execute as @a[tag=!hasportalcodeplayers, tag=scientist] run scoreboard players operation @s portalcodes += var1 portalcodes
tag @a[tag=scientist] add hasportalcodeplayers
execute at @s as @e[type=armor_stand,tag=noportalcodeyet,distance=..5] run scoreboard players operation @s portalcodes = @p[tag=scientist] portalcodes 
execute at @s as @e[type=armor_stand,tag=noportalcodeyet,distance=..5] run tag @s remove noportalcodeyet

#blue portals handling
execute as @e[tag=blue,type=armor_stand] at @s run scoreboard players operation @e[distance=..1.5,tag=!blue,sort=nearest,limit=1,scores={timer=..0}] trackentity = @s portalcodes 
execute as @e[tag=blue,type=armor_stand] at @s run scoreboard players operation @e[distance=1..,tag=!blue,sort=nearest,limit=1] trackentity = 0 trackentity
execute at @e[tag=orange] as @e[scores={trackentity=1.., timer=..0}] run function classespack:tpsequence_bto

#orange portal handling
execute as @e[tag=orange,type=armor_stand] at @s run scoreboard players operation @e[distance=..1.5,tag=!orange,sort=nearest,limit=1,scores={timer=..0}] trackentity = @s portalcodes 
execute as @e[tag=orange,type=armor_stand] at @s run scoreboard players operation @e[distance=1..,tag=!orange,sort=nearest,limit=1] trackentity = 0 trackentity
execute at @e[tag=blue] as @e[scores={trackentity=1.., timer=..0}] run function classespack:tpsequence_otb


#portal deco effects
execute as @e[tag=blue] at @s run particle dust{color:[0.145,0.290,0.859],scale:1} ~ ~1.4 ~ 0.05 0.45 0.3 1 100 normal
execute as @e[tag=orange] at @s run particle dust{color:[1.000,0.710,0.129],scale:1} ~ ~1.4 ~ 0.05 0.45 0.3 1 100 normal
