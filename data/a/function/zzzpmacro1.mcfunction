execute as @a[scores={chunkbase=1..}] run execute store result score @s x run data get entity @s Pos[0]
execute as @a[scores={chunkbase=1..}] run execute store result score @s z run data get entity @s Pos[2]

execute as @a[scores={chunkbase=1..}] run execute store result storage minecraft:posp x int 1 run scoreboard players get @s x
execute as @a[scores={chunkbase=1..}] run execute store result storage minecraft:posp z int 1 run scoreboard players get @s z
function a:zzzpmacro2 with storage posp