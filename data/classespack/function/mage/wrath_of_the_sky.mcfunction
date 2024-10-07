scoreboard players set @s mage 0
kill @e[type=snowball,distance=..3]
execute at @s run particle dust{color:[0.459,0.784,1.000],scale:1} ~ ~ ~ 8 0.2 8 1 800 normal
execute at @s run particle dust{color:[1.000,0.580,0.776],scale:2} ~ ~ ~ 9 0.2 9 1 600 normal
execute at @s run summon lightning_bolt ~5 ~ ~7
execute at @s run summon lightning_bolt ~-4 ~ ~6
execute at @s run summon lightning_bolt ~2 ~ ~-5
execute at @s run summon lightning_bolt ~-3 ~ ~-7
execute at @s at @e[distance=..10,tag=!mage,type=!snowball] run summon minecraft:lightning_bolt
execute at @s as @e[distance=..10,tag=!mage,type=!snowball] run damage @s 10 minecraft:lightning_bolt
scoreboard players set @s timer 100
