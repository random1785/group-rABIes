schedule function a:zzzteamcalc 5t
schedule function a:zzzteamcalc1 10t

execute as @a at @s run playsound minecraft:entity.generic.explode
execute as @a run scoreboard players operation @s score += @s calc
scoreboard players reset @a calc
scoreboard players reset @a[tag=a] scoretick
execute as @a[scores={score=-1500..-1}] run tellraw @a [{"text":"Unfortunately, "},{"selector":"@s"},{"text":"'s score cannot be a nonpositive integer."}]
execute as @a[scores={score=-1500..-1}] run scoreboard players set @s score 1
execute as @a[scores={score=1..}] run tellraw @a [{"color":"aqua","selector":"@s"},{"text":"'s score is now "},{"score":{"name":"@s","objective":"score"}},{"text":"!"}]
# execute store result score @e[type=minecraft:armor_stand,limit=1,tag=score] left run execute if entity @a[scores={score=0..}]
# execute as @e[type=minecraft:armor_stand,limit=1,tag=score] run scoreboard players operation @s right = @s left
# scoreboard players add @e[type=minecraft:armor_stand,limit=1,tag=score] right 1
# execute unless score @e[type=minecraft:armor_stand,limit=1,tag=score] left matches ..1 run schedule function a:zzzstart 3s
# scoreboard players set @a[scores={score=..-1}] gone 1


execute unless score @e[type=minecraft:armor_stand,limit=1,tag=score] rounds matches 10.. run schedule function a:zzzstart 3s
execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] rounds matches 10.. run schedule function a:zzzfinal 2s
# final is where the winner is announced
# execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] left matches 1 run title @a title [{"color":"gold","selector":"@a[scores={score=0..}]"},{"text":" is the winner!"}]
# execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] left matches 1 run tellraw @a [{"color":"gold","selector":"@a[scores={score=0..}]"},{"text":" is the winner!"}]
# execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] left matches 1 run execute at @a run playsound minecraft:ui.toast.challenge_complete master @a

execute as @a run scoreboard players operation @s temp = @s score
scoreboard objectives remove score
scoreboard objectives add score dummy
execute as @a run scoreboard players operation @s score = @s temp
scoreboard players reset * temp
scoreboard objectives setdisplay sidebar score

scoreboard players reset @a glass

execute as @a[scores={score=58215}] run tellraw @a {"color":"dark_purple","text":"You just discovered the funniest bug in existence! I have no idea why it happens, but don't worry, I fix it right after..."}

scoreboard players reset @e s1
scoreboard players reset @e s2
scoreboard players reset @e s3
scoreboard players reset @e s4
scoreboard players reset @e s5
scoreboard players reset @e s6
scoreboard players reset @e s7

# this is to avoid a spectator softlocking everything
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