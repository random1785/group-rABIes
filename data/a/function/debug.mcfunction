tellraw @a [{"text":"Round: "},{"score":{"name":"Round","objective":"d1"}},{"text":" "},{"score":{"name":"Round","objective":"d2"}},{"text":" "},{"score":{"name":"Round","objective":"d3"}},{"text":" "},{"score":{"name":"Round","objective":"d4"}},{"text":", Stand: "},{"score":{"name":"@e[tag=score,limit=1]","objective":"d1"}},{"text":" "},{"score":{"name":"@e[tag=score,limit=1]","objective":"d2"}},{"text":" "},{"score":{"name":"@e[tag=score,limit=1]","objective":"d3"}},{"text":" "},{"score":{"name":"@e[tag=score,limit=1]","objective":"d4"}}]
tellraw @a [{"text":"Round: "},{"score":{"name":"Round","objective":"ta"}},{"text":" "},{"score":{"name":"Round","objective":"tb"}},{"text":" "},{"score":{"name":"Round","objective":"ti"}},{"text":", Stand: "},{"score":{"name":"@e[tag=score,limit=1]","objective":"ta"}},{"text":" "},{"score":{"name":"@e[tag=score,limit=1]","objective":"tb"}},{"text":" "},{"score":{"name":"@e[tag=score,limit=1]","objective":"ti"}}]




scoreboard players reset @e s1
scoreboard players reset @e s2
scoreboard players reset @e s3
scoreboard players reset @e s4
scoreboard players reset @e s5
scoreboard players reset @e s6
scoreboard players reset @e s7

tag @a add s1
tag @a add s2
tag @a add s3
tag @a add s4
tag @a add s5
tag @a add s6
tag @a add s7
tag @a[scores={team=1..7}] remove s1
tag @a[scores={team=1..7}] remove s2
tag @a[scores={team=1..7}] remove s3
tag @a[scores={team=1..7}] remove s4
tag @a[scores={team=1..7}] remove s5
tag @a[scores={team=1..7}] remove s6
tag @a[scores={team=1..7}] remove s7


scoreboard players set @e[type=minecraft:armor_stand,limit=1,tag=score] s1 58215
scoreboard players set @e[type=minecraft:armor_stand,limit=1,tag=score] s2 58215
scoreboard players set @e[type=minecraft:armor_stand,limit=1,tag=score] s3 58215
scoreboard players set @e[type=minecraft:armor_stand,limit=1,tag=score] s4 58215
scoreboard players set @e[type=minecraft:armor_stand,limit=1,tag=score] s5 58215
scoreboard players set @e[type=minecraft:armor_stand,limit=1,tag=score] s6 58215
scoreboard players set @e[type=minecraft:armor_stand,limit=1,tag=score] s7 58215


scoreboard players add @a t1 1
scoreboard players add @r t2 1
execute as @a store result score @s score run random roll 1..1000