scoreboard players set @s mage 0

execute as @s at @s run summon fireball ^ ^1 ^1 {HasVisualFire:1b,ExplosionPower:2b,Tags:["fireball"]} 

scoreboard players set @s timer 100
