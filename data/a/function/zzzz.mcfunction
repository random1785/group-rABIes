execute as @a run scoreboard players operation @s temp = @s score
scoreboard objectives remove score
scoreboard objectives add score dummy
execute as @a run scoreboard players operation @s score = @s temp
scoreboard objectives setdisplay sidebar score
execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] rounds matches ..9 run schedule function a:zzzscorecalc1 100t
execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] rounds matches 10.. run schedule function a:zzzfinalcalc 100t