execute as @a[scores={tank=2}] run tp @s @e[tag=wind,limit=1,sort=nearest]
execute as @a[scores={tank=2}] run scoreboard players set @s tank 3
kill @e[tag=wind]