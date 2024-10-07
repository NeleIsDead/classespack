scoreboard players set @s mage 0

execute at @s run data merge entity @e[type=snowball,limit=1,distance=..3,sort=nearest] {NoGravity:1b,Tags:["magic_missile"],Item:{id:"minecraft:blue_ice",count:1}}

scoreboard players set @s timer 20
