#store the spell code in a scoreboard
execute as @a[tag=mage] store result score @s mage_spell run data get entity @s SelectedItem.components.minecraft:dyed_color.rgb


#Get score and use it to determine spell used
execute as @a[tag=mage,scores={mage=1..,mage_spell=41,timer=..0}] at @s run function classespack:mage/wrath_of_the_sky with entity @s
execute as @a[tag=mage,scores={mage=1..,mage_spell=43,timer=..0}] at @s run function classespack:mage/magic_missile with entity @s
execute as @a[tag=mage,scores={mage=1..,mage_spell=42,timer=..0}] at @s run function classespack:mage/fireball with entity @s
execute as @a[tag=mage,scores={mage=1..,mage_spell=46,timer=..0}] at @s run function classespack:mage/nuke with entity @s

#bugfixes
execute as @a[tag=mage,scores={mage=1..,mage_spell=0,timer=..0}] run scoreboard players set @s mage 0
execute as @a[tag=mage,scores={mage=1..,timer=1..}] run scoreboard players set @s mage 0 

#Doin Crystals lol
execute as @a[tag=mage,scores={crystals_snorted=1..}] run function classespack:mage/gimme_them_spells with entity @s

#Projectile mechanics
execute at @a[tag=mage] as @e[type=fireball,tag=nuke,distance=..128] run function classestick:nuketick with entity @s
execute at @a[tag=mage] as @e[type=snowball,tag=magic_missile,distance=..64] run function classestick:missiletick with entity @s
execute at @a[tag=mage] at @e[type=fireball,tag=fireball,distance=3..64] as @e[distance=..3] run damage @s 20 in_fire
