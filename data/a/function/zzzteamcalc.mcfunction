tag @e[type=minecraft:armor_stand,limit=1,tag=score] remove s

execute as @r[scores={team=1},tag=!s1] if score @s score < @e[type=minecraft:armor_stand,limit=1,tag=score] s1 run scoreboard players operation @e[type=minecraft:armor_stand,limit=1,tag=score] s1 = @s score
execute as @r[scores={team=1},tag=!s1] if score @s score >= @e[type=minecraft:armor_stand,limit=1,tag=score] s1 run tag @s add s1
execute as @r[scores={team=2},tag=!s2] if score @s score < @e[type=minecraft:armor_stand,limit=1,tag=score] s2 run scoreboard players operation @e[type=minecraft:armor_stand,limit=1,tag=score] s2 = @s score
execute as @r[scores={team=2},tag=!s2] if score @s score >= @e[type=minecraft:armor_stand,limit=1,tag=score] s2 run tag @s add s2
execute as @r[scores={team=3},tag=!s3] if score @s score < @e[type=minecraft:armor_stand,limit=1,tag=score] s3 run scoreboard players operation @e[type=minecraft:armor_stand,limit=1,tag=score] s3 = @s score
execute as @r[scores={team=3},tag=!s3] if score @s score >= @e[type=minecraft:armor_stand,limit=1,tag=score] s3 run tag @s add s3
execute as @r[scores={team=4},tag=!s4] if score @s score < @e[type=minecraft:armor_stand,limit=1,tag=score] s4 run scoreboard players operation @e[type=minecraft:armor_stand,limit=1,tag=score] s4 = @s score
execute as @r[scores={team=4},tag=!s4] if score @s score >= @e[type=minecraft:armor_stand,limit=1,tag=score] s4 run tag @s add s4
execute as @r[scores={team=5},tag=!s5] if score @s score < @e[type=minecraft:armor_stand,limit=1,tag=score] s5 run scoreboard players operation @e[type=minecraft:armor_stand,limit=1,tag=score] s5 = @s score
execute as @r[scores={team=5},tag=!s5] if score @s score >= @e[type=minecraft:armor_stand,limit=1,tag=score] s5 run tag @s add s5
execute as @r[scores={team=6},tag=!s6] if score @s score < @e[type=minecraft:armor_stand,limit=1,tag=score] s6 run scoreboard players operation @e[type=minecraft:armor_stand,limit=1,tag=score] s6 = @s score
execute as @r[scores={team=6},tag=!s6] if score @s score >= @e[type=minecraft:armor_stand,limit=1,tag=score] s6 run tag @s add s6
execute as @r[scores={team=7},tag=!s7] if score @s score < @e[type=minecraft:armor_stand,limit=1,tag=score] s7 run scoreboard players operation @e[type=minecraft:armor_stand,limit=1,tag=score] s7 = @s score
execute as @r[scores={team=7},tag=!s7] if score @s score >= @e[type=minecraft:armor_stand,limit=1,tag=score] s7 run tag @s add s7


execute if entity @a[scores={team=1},tag=!s1] run tag @e[type=minecraft:armor_stand,limit=1,tag=score] add s
execute if entity @a[scores={team=2},tag=!s2] run tag @e[type=minecraft:armor_stand,limit=1,tag=score] add s
execute if entity @a[scores={team=3},tag=!s3] run tag @e[type=minecraft:armor_stand,limit=1,tag=score] add s
execute if entity @a[scores={team=4},tag=!s4] run tag @e[type=minecraft:armor_stand,limit=1,tag=score] add s
execute if entity @a[scores={team=5},tag=!s5] run tag @e[type=minecraft:armor_stand,limit=1,tag=score] add s
execute if entity @a[scores={team=6},tag=!s6] run tag @e[type=minecraft:armor_stand,limit=1,tag=score] add s
execute if entity @a[scores={team=7},tag=!s7] run tag @e[type=minecraft:armor_stand,limit=1,tag=score] add s
execute as @e[type=minecraft:armor_stand,limit=1,tag=score,tag=s] run function a:zzzteamcalc



#execute as @a[scores={team=2}] if score @s score >= @e[type=minecraft:armor_stand,limit=1,tag=score] s2 run function a:zzzteamcalc
#execute as @a[scores={team=1}] if score @s score >= @e[type=minecraft:armor_stand,limit=1,tag=score] s1 run function a:zzzteamcalc
#execute unless entity @a[scores={team=1},tag=!s1] run execute as @e[type=minecraft:armor_stand,limit=1,tag=score,tag=!s1] run tellraw @a [{"text":"Lowest score on t1 is "},{"score":{"name":"@s","objective":"s1"}}]
#execute unless entity @a[scores={team=1},tag=!s1] run execute as @e[type=minecraft:armor_stand,limit=1,tag=score,tag=!s1] run tag @s add s1
#execute as @e[type=minecraft:armor_stand,limit=1,tag=score] run execute unless entity @a[scores={team=1},tag=!s1] run scoreboard players reset @e s1
#execute as @e[type=minecraft:armor_stand,limit=1,tag=score] run execute unless entity @a[scores={team=1},tag=!s1] run tag @e remove s1
#execute as @e[type=minecraft:armor_stand,limit=1,tag=score,tag=!s2] run execute unless entity @a[scores={team=2},tag=!s2] run tellraw @a [{"text":"Lowest score on t2 is "},{"score":{"name":"@s","objective":"s2"}}]
#execute as @e[type=minecraft:armor_stand,limit=1,tag=score,tag=!s2] run execute unless entity @a[scores={team=2},tag=!s2] run tag @s add s2
#execute as @e[type=minecraft:armor_stand,limit=1,tag=score] run execute unless entity @a[scores={team=2},tag=!s2] run scoreboard players reset @e s2
#execute as @e[type=minecraft:armor_stand,limit=1,tag=score] run execute unless entity @a[scores={team=2},tag=!s2] run tag @e remove s2