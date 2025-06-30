execute as @a[scores={score=1..}] run scoreboard players operation @s calc *= @e[type=armor_stand,tag=score] ex
execute as @a[scores={score=1..,place=1}] run scoreboard players operation @s calc -= @e[type=armor_stand,tag=score] twok
scoreboard players operation @e[type=armor_stand,tag=score] twok /= @e[type=armor_stand,tag=score] two
execute as @a[scores={score=1..,place=2}] run scoreboard players operation @s calc -= @e[type=armor_stand,tag=score] twok
scoreboard players operation @e[type=armor_stand,tag=score] twok /= @e[type=armor_stand,tag=score] two
execute as @a[scores={score=1..,place=3}] run scoreboard players operation @s calc -= @e[type=armor_stand,tag=score] twok
# execute as @a[scores={score=1..}] run scoreboard players operation @s calc *= @e[type=armor_stand,tag=score] multi
# execute as @a[scores={score=1..}] run scoreboard players operation @s calc /= @e[type=armor_stand,tag=score] first
# execute as @e[type=armor_stand,tag=score] run scoreboard players operation @s multi *= @e[type=armor_stand,tag=score] ex
# execute as @a[scores={score=1..}] run scoreboard players operation @s calc -= @e[type=armor_stand,tag=score] multi
execute as @a[scores={score=1..}] run scoreboard players operation @s calc /= @e[type=armor_stand,tag=score] multi
execute as @a[scores={score=1..}] run tellraw @a [{"color":"gold","selector":"@s"},{"text":" got a score of "},{"score":{"name":"@s","objective":"calc"}},{"text":"!"}]

execute as @a run scoreboard players operation @s temp = @s score
scoreboard objectives remove score
scoreboard objectives add score dummy
execute as @a run scoreboard players operation @s score = @s temp
scoreboard objectives setdisplay sidebar score