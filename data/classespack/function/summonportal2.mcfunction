execute as @s at @e[type=armor_stand,tag=orange] if score @n portalcodes = @s portalcodes run forceload remove ~ ~
execute as @s at @e[type=armor_stand,tag=orange] if score @n portalcodes = @s portalcodes run kill @n

execute as @s run summon armor_stand ^ ^ ^2 {CustomNameVisible:0b,NoGravity:1b,Invisible:1b,Tags:["noportalcodeyet","orange"]}
execute as @s run forceload add ~ ~ ~ ~
scoreboard players set @s scientist 0