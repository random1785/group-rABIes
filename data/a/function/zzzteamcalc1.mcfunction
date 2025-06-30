tellraw @a {"text":"Adjusted scores for teams:","color":"blue","bold":true}
scoreboard players operation @a[scores={team=1}] score = @e[type=minecraft:armor_stand,limit=1,tag=score] s1
scoreboard players operation @a[scores={team=2}] score = @e[type=minecraft:armor_stand,limit=1,tag=score] s2
scoreboard players operation @a[scores={team=3}] score = @e[type=minecraft:armor_stand,limit=1,tag=score] s3
scoreboard players operation @a[scores={team=4}] score = @e[type=minecraft:armor_stand,limit=1,tag=score] s4
scoreboard players operation @a[scores={team=5}] score = @e[type=minecraft:armor_stand,limit=1,tag=score] s5
scoreboard players operation @a[scores={team=6}] score = @e[type=minecraft:armor_stand,limit=1,tag=score] s6
scoreboard players operation @a[scores={team=7}] score = @e[type=minecraft:armor_stand,limit=1,tag=score] s7
execute as @e[type=minecraft:armor_stand,limit=1,tag=score] if entity @a[scores={team=1}] run tellraw @a [{"text":"Team 1's score is now ","color":"blue"},{"score":{"name":"@s","objective":"s1"}},{"text":"!"}]
execute as @e[type=minecraft:armor_stand,limit=1,tag=score] if entity @a[scores={team=2}] run tellraw @a [{"text":"Team 2's score is now ","color":"blue"},{"score":{"name":"@s","objective":"s2"}},{"text":"!"}]
execute as @e[type=minecraft:armor_stand,limit=1,tag=score] if entity @a[scores={team=3}] run tellraw @a [{"text":"Team 3's score is now ","color":"blue"},{"score":{"name":"@s","objective":"s3"}},{"text":"!"}]
execute as @e[type=minecraft:armor_stand,limit=1,tag=score] if entity @a[scores={team=4}] run tellraw @a [{"text":"Team 4's score is now ","color":"blue"},{"score":{"name":"@s","objective":"s4"}},{"text":"!"}]
execute as @e[type=minecraft:armor_stand,limit=1,tag=score] if entity @a[scores={team=5}] run tellraw @a [{"text":"Team 5's score is now ","color":"blue"},{"score":{"name":"@s","objective":"s5"}},{"text":"!"}]
execute as @e[type=minecraft:armor_stand,limit=1,tag=score] if entity @a[scores={team=6}] run tellraw @a [{"text":"Team 6's score is now ","color":"blue"},{"score":{"name":"@s","objective":"s6"}},{"text":"!"}]
execute as @e[type=minecraft:armor_stand,limit=1,tag=score] if entity @a[scores={team=7}] run tellraw @a [{"text":"Team 7's score is now ","color":"blue"},{"score":{"name":"@s","objective":"s7"}},{"text":"!"}]
