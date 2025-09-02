execute as @a[scores={echo=1..}] at @s run execute if block ~ ~ ~ #spwn run execute if block ~ ~1 ~ #spwn run scoreboard players set @s echo 1785
execute as @a[scores={echo=1785}] at @s run spawnpoint @s ~ ~ ~
execute as @a[scores={echo=1785}] run tellraw @s {"text":"Spawnpoint successfully set!","color":"dark_green","bold":true}
execute as @a[scores={echo=1785}] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 100000
execute as @a[scores={echo=1..1784}] run tellraw @s {"text":"This spawnpoint is obstructed...","color":"dark_red","bold":true}
execute as @a[scores={echo=1..1784}] run playsound minecraft:entity.villager.no master @s ~ ~ ~ 100000
scoreboard players set @a[scores={echo=1..}] echo 0