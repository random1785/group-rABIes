execute at @r run spreadplayers ~ ~ 0 7 true @a
execute at @a run fill ~1 ~ ~1 ~-1 ~ ~-1 minecraft:glass
execute at @a run setblock ~ ~ ~ air
execute at @a run setblock ~ ~2 ~ minecraft:glass
execute at @a run setblock ~ ~-1 ~ command_block
execute at @a run setblock ~ ~-2 ~ dirt
execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"]}
execute store result score @e[type=armor_stand,tag=start] x run data get entity @e[type=armor_stand,tag=start,limit=1] Pos[0]
execute store result score @e[type=armor_stand,tag=start] z run data get entity @e[type=armor_stand,tag=start,limit=1] Pos[2]
execute as @n[type=armor_stand,tag=start] run execute store result storage minecraft:pos x int 1 run scoreboard players get @s x
execute as @n[type=armor_stand,tag=start] run execute store result storage minecraft:pos z int 1 run scoreboard players get @s z
function a:zzzmacro with storage pos
execute store result storage rem t int 1 run scoreboard players get @n[type=minecraft:armor_stand,tag=score] t
execute store result storage rem m int 1 run scoreboard players get @n[type=minecraft:armor_stand,tag=score] message
tag @a add bugs
clear @a
# gamemode spectator @a[scores={score=..-1}]
# tellraw @a[scores={score=..-1}] {"color":"dark_gray","text":"You've already been eliminated, but you can still spectate the chaos!"}
# tag @a[scores={score=..-1}] add a
xp set @a 0 levels
xp set @a 0 points
scoreboard players set @e[type=armor_stand,tag=score] place 0
scoreboard players reset @a place
scoreboard players set @a calc 12000
scoreboard players set @e[type=armor_stand,tag=score] twok 2000

# disables team trigger
execute as @a run trigger t1 add 0
execute as @a run trigger t2 add 0
execute as @a run trigger t3 add 0
execute as @a run trigger t4 add 0
execute as @a run trigger t5 add 0
execute as @a run trigger t7 add 0
execute as @a run trigger t6 add 0