execute at @s run particle dust{color:[0.220,0.780,0.761],scale:1} ~ ~ ~ 0 0 0 0 3 normal
execute at @s run particle dust{color:[0.769,0.537,0.310],scale:0.3} ~ ~ ~ 0 0 0 0 1 normal
execute at @s as @e[distance=..3,tag=!mage] run damage @s 7 magic
execute at @s as @e[distance=..3,tag=!mage] run effect give @s glowing 20 1