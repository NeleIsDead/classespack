scoreboard players set @s tank 2
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["wind"]}
schedule function classespack:tanktp 2 append
schedule function classespack:tanktp2 3 append
effect give @s resistance 10 1 true
scoreboard players set @s timer 600