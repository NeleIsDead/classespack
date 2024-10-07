execute at @e[tag=blue,type=armor_stand] if score @s trackentity = @e[type=armor_stand,tag=blue,sort=nearest,limit=1] portalcodes run tp @s ~ ~0.5 ~
scoreboard players set @s timer 50