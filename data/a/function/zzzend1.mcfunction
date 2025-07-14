
# multi 1
execute as @e[tag=score,scores={ex=1,scoretick=10000..10010}] run execute unless score @s gone matches 1 run title @a[tag=!a] title {"text":"Time's up!","color":"dark_red"}
execute as @e[tag=score,scores={ex=1,scoretick=10000..10010}] run execute unless score @s gone matches 1 run execute as @a[tag=!a] run tellraw @a [{"selector":"@s","color":"dark_red"},{"text":" has ran out of time, ending with a score of 12000."}]
execute as @e[tag=score,scores={ex=1,scoretick=10000..10010}] at @a[tag=!a] run execute unless score @s gone matches 1 run playsound minecraft:entity.wither.death player @a[tag=!a]
execute as @e[tag=score,scores={ex=1,scoretick=10000..10010}] run execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] rounds matches ..9 run schedule function a:zzzscorecalc1 100t
execute as @e[tag=score,scores={ex=1,scoretick=10000..10010}] run execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] rounds matches 10.. run schedule function a:zzzfinalcalc 100t
execute as @e[tag=score,scores={ex=1,scoretick=10000..10010}] run gamemode spectator @a[tag=!a]
execute as @e[tag=score,scores={ex=1,scoretick=10000..10010}] run scoreboard players set @a[tag=!a] lobby 1
execute as @e[tag=score,scores={ex=1,scoretick=10000..10010}] run scoreboard players set @s round 0
execute as @e[tag=score,scores={ex=1,scoretick=10000..10010}] run scoreboard players set @a[scores={done=0},tag=!a] calc 12000
execute as @e[tag=score,scores={ex=1,scoretick=10000..10010}] run scoreboard players set @s scoretick 12000