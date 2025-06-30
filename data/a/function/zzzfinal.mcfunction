execute as @e[type=minecraft:armor_stand,limit=1,tag=score,tag=!final] run scoreboard objectives setdisplay sidebar
execute as @e[type=minecraft:armor_stand,limit=1,tag=score,tag=!final] run scoreboard players operation @s score = @r score
execute as @e[type=minecraft:armor_stand,limit=1,tag=score,tag=!final] run tellraw @a {"color":"red","bold":true,"text":"Thanks for playing! Announcing the winner..."}

execute as @r[tag=!final] if score @s score < @e[type=minecraft:armor_stand,limit=1,tag=score] score run scoreboard players operation @e[type=minecraft:armor_stand,limit=1,tag=score] score = @s score
execute as @r[tag=!final] if score @s score >= @e[type=minecraft:armor_stand,limit=1,tag=score] score run tag @s add final

tag @e[type=minecraft:armor_stand,limit=1,tag=score,tag=!final] add final

execute if entity @a[tag=!final] run function a:zzzfinal
execute unless entity @a[tag=!final] run execute as @a at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 0.3
execute unless entity @a[tag=!final] run schedule function a:zzzfinalprint 10s
execute unless entity @a[tag=!final] run schedule function a:zzzfinalprint1 133t
execute unless entity @a[tag=!final] run schedule function a:zzzfinalprint2 173t