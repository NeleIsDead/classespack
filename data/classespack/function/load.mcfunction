scoreboard objectives add samurai minecraft.used:warped_fungus_on_a_stick
execute as @a[scores={samurai=1..}] run scoreboard players set @s samurai 0

scoreboard objectives add tank minecraft.used:warped_fungus_on_a_stick
execute as @a[scores={tank=1..}] run scoreboard players set @s tank 0

scoreboard objectives add berserk minecraft.used:warped_fungus_on_a_stick
execute as @a[scores={berserk=1..}] run scoreboard players set @s berserk 0 

scoreboard objectives add blaze minecraft.used:warped_fungus_on_a_stick
execute as @a[scores={blaze=1..}] run scoreboard players set @s blaze 0 

scoreboard objectives add scientist minecraft.used:warped_fungus_on_a_stick
execute as @a[scores={scientist=1..}] run scoreboard players set @s scientist 0 

scoreboard objectives add gojo minecraft.used:warped_fungus_on_a_stick
execute as @a[scores={gojo=1..}] run scoreboard players set @s gojo 0 

scoreboard objectives add mage minecraft.used:snowball
execute as @a[scores={mage=1..}] run scoreboard players set @s mage 0 

scoreboard objectives add crystals_snorted minecraft.used:minecraft.prismarine_crystals
execute as @a[scores={crystals_snorted=1..}] run say I love my magic crystals

scoreboard objectives add mage_spell dummy
scoreboard players set @a[scores={mage_spell=1..}] mage_spell 0

scoreboard players add @e[type=!minecraft:armor_stand] timer 0

scoreboard objectives add death deathCount
scoreboard objectives add portalcodes dummy "portalcodes"
scoreboard objectives add trackentity dummy "trackentity"

execute positioned 0 90 0 run setblock ~ ~ ~ repeating_command_block{Command:"execute at @e[tag=blue] run forceload add ~ ~ ~ ~"}

scoreboard players set var1 portalcodes 1
scoreboard players set 0 timer 1 
scoreboard players set 0 trackentity 0 

scoreboard objectives add timer dummy "timer"
scoreboard players set @e timer 0

tellraw @a {"text":"datapack loaded successfuly","bold":true,"italic":true,"color":"dark_purple"}
