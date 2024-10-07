execute as @a[tag=!hasclass] run function classespack:classchoice
execute as @a[tag=samurai] run function classestick:samuraitick
execute as @a[tag=tank] run function classestick:tanktick
execute as @a[tag=berserk] run function classestick:berserktick
execute as @a[tag=blaze] run function classestick:blazetick
execute as @a[tag=scientist] run function classestick:scientisttick
execute as @a[tag=gojo] run function classestick:gojotick
execute as @a[tag=mage] run function classestick:magetick

execute as @a[scores={death=1}] run attribute @s generic.jump_strength base set 0.41999998688697815
execute as @a[scores={death=1}] run scoreboard players set @s death 0

execute at @e[tag=blue] run forceload add ~ ~ ~ ~

#fucking slimes
tp @e[type=slime] ~ ~-100 ~

#reset scores
scoreboard players set @a[tag=!samurai] samurai 0
scoreboard players set @a[tag=!tank] tank 0
scoreboard players set @a[tag=!berserk] berserk 0
scoreboard players set @a[tag=!blaze] blaze 0
scoreboard players set @a[tag=!scientist] scientist 0
scoreboard players set @a[tag=!gojo] gojo 0
scoreboard players set @a[tag=!mage] mage 0

execute as @a[scores={berserk=2..}] run scoreboard players set @s berserk 0
execute as @a[scores={tank=3..}] run scoreboard players set @s tank 0
execute as @a[scores={samurai=2..}] run scoreboard players set @s samurai 0
execute as @a[scores={blaze=2..}] run scoreboard players set @s blaze 0
execute as @a[scores={scientist=2..}] run scoreboard players set @s scientist 0
execute as @a[scores={gojo=2..}] run scoreboard players set @s gojo 0
execute as @a[scores={mage=2..}] run scoreboard players set @s mage 0

#anti item smuggling

#Timer
execute as @a run scoreboard players operation @s timer -= 0 timer 
execute as @a[scores={timer=..-1000}] run scoreboard players set @s timer -1
execute as @a[scores={timer=5}] run scoreboard players set @s berserk 0 
execute as @a[scores={timer=5}] run scoreboard players set @s mage 0
execute as @a[scores={timer=5}] run scoreboard players set @s samurai 0
execute as @a[scores={timer=5}] run scoreboard players set @s tank 0
execute as @a[scores={timer=5}] run scoreboard players set @s blaze 0
execute as @a[scores={timer=5}] run scoreboard players set @s gojo 0



#entity + portals handling
execute as @a run execute as @e[type=!player,tag=!is_timed] run scoreboard players set @s timer 0
execute as @a run execute as @e[type=!player,tag=!is_timed] run tag @s add is_timed
execute as @e[type=!player, tag=is_timed] run scoreboard players operation @s timer -= 0 timer 


#Ability indicator
title @a[tag=!noability,scores={timer=..0}] actionbar [{"bold":true,"color":"#3A8722","italic":false,"obfuscated":false,"strikethrough":false,"text":"A","underlined":false},{"color":"#409829","text":"b"},{"color":"#46AA31","text":"i"},{"color":"#4CBB38","text":"l"},{"color":"#52CC3F","text":"i"},{"color":"#4CBB38","text":"t"},{"color":"#46AA31","text":"y "},{"color":"#409829","text":"A"},{"color":"#3A8722","text":"v"},{"color":"#409829","text":"a"},{"color":"#46AA31","text":"i"},{"color":"#4CBB38","text":"l"},{"color":"#52CC3F","text":"a"},{"color":"#4CBB38","text":"b"},{"color":"#46AA31","text":"l"},{"color":"#3A8722","text":"e"}]
title @a[tag=!noability,scores={timer=1..}] actionbar [{"bold":true,"color":"#A1271E","italic":false,"obfuscated":false,"strikethrough":false,"text":"A","underlined":false},{"color":"#AD3026","text":"b"},{"color":"#B9392D","text":"i"},{"color":"#C44235","text":"l"},{"color":"#D04B3C","text":"i"},{"color":"#D04B3C","text":"t"},{"color":"#C44235","text":"y "},{"color":"#B9392D","text":"U"},{"color":"#AD3026","text":"n"},{"color":"#A1271E","text":"a"},{"color":"#AD3026","text":"v"},{"color":"#B9392D","text":"a"},{"color":"#C44235","text":"i"},{"color":"#D04B3C","text":"l"},{"color":"#D04B3C","text":"a"},{"color":"#C44235","text":"b"},{"color":"#B9392D","text":"l"},{"color":"#A1271E","text":"e"}]