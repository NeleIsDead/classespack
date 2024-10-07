execute at @e[tag=orange,type=armor_stand] if score @s trackentity = @e[type=armor_stand,tag=orange,sort=nearest,limit=1] portalcodes run tp @s ~ ~0.5 ~
scoreboard players set @s timer 50