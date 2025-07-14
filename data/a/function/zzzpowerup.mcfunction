execute as @e[tag=score,scores={round=1,scoretick=10..}] run execute as @a[scores={pup=1..}] at @s run tp @s ^ ^ ^20
execute as @e[tag=score,scores={round=1,scoretick=1..9}] run tellraw @a[scores={pup=1..}] {"text":"Due to weird glitches, you may not use your powerup in the first half second. Apologies!"}
execute as @e[tag=score,scores={round=1,scoretick=10..}] run execute as @a[scores={pup=1..}] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.1
execute as @e[tag=score,scores={round=1,scoretick=10..}] run execute as @a[scores={pup=1..}] run scoreboard players reset @s pup