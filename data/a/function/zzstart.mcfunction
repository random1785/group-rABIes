tag @e remove newcheck
tag @e remove final
gamerule doImmediateRespawn true
clear @a
weather clear
time set 10000
scoreboard players set @a done 0
scoreboard players set @a score 100
scoreboard players set @a temp 100
scoreboard players set Round rounds 1
scoreboard players set Round d1 2
scoreboard players set Round d2 3
scoreboard players set Round d3 3
scoreboard players set Round d4 2
scoreboard players set Round ta 3
scoreboard players set Round ti 4
scoreboard players set Round tb 3
scoreboard players set Round onefifty 150
scoreboard players set Round newscore 0
gamerule announceAdvancements true
kill @e[type=armor_stand]
summon minecraft:armor_stand 0 330 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["score","newcheck"]}
scoreboard players set @e[type=armor_stand,tag=score] first -100
scoreboard players set @e[type=armor_stand,tag=score] multi 100
scoreboard players operation @e[type=armor_stand,tag=score] rounds = Round rounds
team join a @a
advancement revoke @a everything
effect clear @a
kill @a
tag @a remove a
execute as @a at @s run playsound minecraft:block.trial_spawner.ominous_activate
title @a title {"text":"game starting!","color":"green"}
schedule function a:zzzstart1 20t
gamemode survival @a
scoreboard players set @e[type=armor_stand,tag=score,limit=1] two 2

# randomizer stuff
scoreboard players operation @e[type=armor_stand,tag=score,limit=1] d1 = Round d1
scoreboard players operation @e[type=armor_stand,tag=score,limit=1] d2 = Round d2
scoreboard players operation @e[type=armor_stand,tag=score,limit=1] d3 = Round d3
scoreboard players operation @e[type=armor_stand,tag=score,limit=1] d4 = Round d4

execute store result score @e[type=armor_stand,tag=score,limit=1] d run random value 2..4


scoreboard players operation @e[type=armor_stand,tag=score,limit=1] ta = Round ta
scoreboard players operation @e[type=armor_stand,tag=score,limit=1] ti = Round ti
scoreboard players operation @e[type=armor_stand,tag=score,limit=1] tb = Round tb
scoreboard players set @e[type=armor_stand,tag=score,limit=1,scores={ta=1..}] t 1
scoreboard players set @e[type=armor_stand,tag=score,limit=1,scores={tb=1..}] t 2
scoreboard players set @e[type=armor_stand,tag=score,limit=1,scores={ti=1..}] t 3
execute store result score @e[type=armor_stand,tag=score,limit=1,scores={ta=1..,tb=1..}] t run random value 1..2
execute store result score @e[type=armor_stand,tag=score,limit=1,scores={tb=1..,ti=1..}] t run random value 2..3
execute store result score @e[type=armor_stand,tag=score,limit=1,scores={ta=1..,ti=1..}] t run random value 1..2
scoreboard players set @e[type=armor_stand,tag=score,limit=1,scores={ta=1..,ti=1..,t=2}] t 3
execute store result score @e[type=armor_stand,tag=score,limit=1,scores={ta=1..,ti=1..,tb=1..}] t run random value 1..3


# execute store result score @e[type=armor_stand,tag=score,limit=1] message run random value 2..47
# scoreboard players set @e[type=armor_stand,tag=score,limit=1] message 21


execute as @e[type=armor_stand,tag=score] run tellraw @a [{"bold":true,"color":"gold","text":"Round "},{"score":{"name":"@s","objective":"rounds"}},{"text":":"}]



execute as @e[type=armor_stand,tag=score,scores={t=1}] run schedule function a:deathmessage 20t
execute as @e[type=armor_stand,tag=score,scores={t=2}] run schedule function a:blockmessage 20t
execute as @e[type=armor_stand,tag=score,scores={t=3}] run schedule function a:itemmessage 20t


# give bonus items
execute as @e[type=armor_stand,tag=score,limit=1,scores={d=2}] run schedule function a:zzzd2bonus 120t
execute as @e[type=armor_stand,tag=score,limit=1,scores={d=3}] run schedule function a:zzzd3bonus 120t
execute as @e[type=armor_stand,tag=score,limit=1,scores={d=4}] run schedule function a:zzzd4bonus 120t