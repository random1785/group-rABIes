scoreboard players reset @e[type=minecraft:armor_stand,limit=1] scoretick
scoreboard players set @e[type=minecraft:armor_stand,limit=1] round 0
tellraw @a {"text":"Round is over! Calculating results:","color":"red","bold":true}
tellraw @a {"text":"(Team scores will be adjusted at the end of this calculation)","color":"gray"}
execute as @a at @s run playsound block.trial_spawner.about_to_spawn_item ambient
schedule function a:zzzscorecalc2 45t
schedule function a:zzzscorecalc3 80t
execute as @a run scoreboard players operation @s temp = @s score
scoreboard objectives remove score
scoreboard objectives add score dummy
execute as @a run scoreboard players operation @s score = @s temp
scoreboard objectives setdisplay sidebar score