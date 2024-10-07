#passive
attribute @s minecraft:generic.fall_damage_multiplier base set 0.4
attribute @s minecraft:generic.burning_time base set 0.2 

#active1
execute if entity @s[scores={blaze=1}, tag=blaze] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:dyed_color=4] run effect give @s levitation 1 3 true
execute if entity @s[scores={blaze=1..}, tag=blaze] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:dyed_color=4] run scoreboard players set @s blaze 0


#active2
execute if entity @s[tag=blaze] if items entity @s weapon.mainhand minecraft:snowball[minecraft:dyed_color=1] run execute at @s[tag=blaze] run data merge entity @e[type=snowball,limit=1] {NoGravity:1b,Fire:9999999,HasVisualFire:1b,Item:{id:"minecraft:fire_charge",count:1}}
execute if entity @s[tag=blaze] if items entity @s weapon.mainhand minecraft:snowball[minecraft:dyed_color=1] run execute at @s[tag=blaze] run execute at @s[tag=blaze] run data merge entity @e[type=snowball,limit=1,sort=nearest] {NoGravity:1b,Fire:9999999,HasVisualFire:1b,Item:{id:"minecraft:fire_charge",count:1}}
execute if entity @s[tag=blaze] if items entity @s weapon.mainhand minecraft:snowball[minecraft:dyed_color=1] run execute at @s[tag=blaze] run execute at @e[type=snowball] run damage @e[distance=..4,limit=1,tag=!blaze] 30 minecraft:campfire
execute as @a[tag=blaze] if items entity @s hotbar.8 snowball[minecraft:dyed_color=1,count=1] run scoreboard players set @s timer 300
execute as @a[tag=blaze] if items entity @s hotbar.8 snowball[minecraft:dyed_color=1,count=1] run item replace entity @s hotbar.8 with echo_shard[dyed_color=42, item_name='[{"bold":true,"color":"#FFAF0F","text":"П"},{"color":"#F9A812","text":"е"},{"color":"#F3A116","text":"р"},{"color":"#ED9A19","text":"е"},{"color":"#E8931D","text":"з"},{"color":"#E28C20","text":"а"},{"color":"#DC8524","text":"р"},{"color":"#D67E27","text":"я"},{"color":"#D38827","text":"д"},{"color":"#D19228","text":"к"},{"color":"#CE9C28","text":"а"},{"color":"#CCA628","text":"."},{"color":"#C9B028","text":"."},{"color":"#C4C429","text":"."}]'] 1
execute as @a[tag=blaze, scores={timer=..0}] run execute if items entity @s hotbar.8 echo_shard[dyed_color=42, item_name='[{"bold":true,"color":"#FFAF0F","text":"П"},{"color":"#F9A812","text":"е"},{"color":"#F3A116","text":"р"},{"color":"#ED9A19","text":"е"},{"color":"#E8931D","text":"з"},{"color":"#E28C20","text":"а"},{"color":"#DC8524","text":"р"},{"color":"#D67E27","text":"я"},{"color":"#D38827","text":"д"},{"color":"#D19228","text":"к"},{"color":"#CE9C28","text":"а"},{"color":"#CCA628","text":"."},{"color":"#C9B028","text":"."},{"color":"#C4C429","text":"."}]'] run item replace entity @s hotbar.8 with snowball[minecraft:dyed_color=1] 4