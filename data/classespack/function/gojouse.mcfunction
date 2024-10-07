scoreboard players set @a[tag=gojo] gojo 2
summon armor_stand ^ ^ ^2 {CustomNameVisible:0b,NoGravity:1b,Invisible:1b,Tags:["domain"]}
execute at @e[tag=domain] run fill ~-5 ~-1 ~-5 ~5 ~5 ~5 minecraft:black_concrete
execute at @e[tag=domain] run fill ~-4 ~ ~-4 ~4 ~4 ~4 minecraft:air
scoreboard players set @s timer 1200
schedule function classespack:domainend 5s append
function classespack:domain
