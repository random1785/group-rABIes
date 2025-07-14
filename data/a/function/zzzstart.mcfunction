clear @a
weather clear
time set 10000
scoreboard players set @a done 0
scoreboard players add Round rounds 1
scoreboard players operation Round newscore += Round onefifty
scoreboard players operation @a[scores={score=-1785}] score = Round newscore
scoreboard players operation @a[scores={score=7000..}] score = Round newscore
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
tag @a remove final
schedule function a:zzzstart1 20t
gamemode survival @a
scoreboard players set @e[type=armor_stand,tag=score,limit=1] two 2


# randomizer stuff
scoreboard players operation @e[type=armor_stand,tag=score,limit=1] d1 = Round d1
scoreboard players operation @e[type=armor_stand,tag=score,limit=1] d2 = Round d2
scoreboard players operation @e[type=armor_stand,tag=score,limit=1] d3 = Round d3
scoreboard players operation @e[type=armor_stand,tag=score,limit=1] d4 = Round d4
scoreboard players set @e[type=armor_stand,tag=score,limit=1,scores={d1=1..}] d 1
scoreboard players set @e[type=armor_stand,tag=score,limit=1,scores={d2=1..}] d 2
scoreboard players set @e[type=armor_stand,tag=score,limit=1,scores={d3=1..}] d 3
scoreboard players set @e[type=armor_stand,tag=score,limit=1,scores={d4=1..}] d 4
execute store result score @e[type=armor_stand,tag=score,limit=1,scores={d1=1..,d2=1..}] d run random value 1..2
execute store result score @e[type=armor_stand,tag=score,limit=1,scores={d1=1..,d3=1..}] d run random value 1..2
scoreboard players set @e[type=armor_stand,tag=score,limit=1,scores={d1=1..,d3=1..,d=2}] d 3
execute store result score @e[type=armor_stand,tag=score,limit=1,scores={d1=1..,d4=1..}] d run random value 1..2
scoreboard players set @e[type=armor_stand,tag=score,limit=1,scores={d1=1..,d4=1..,d=2}] d 4
execute store result score @e[type=armor_stand,tag=score,limit=1,scores={d2=1..,d3=1..}] d run random value 2..3
execute store result score @e[type=armor_stand,tag=score,limit=1,scores={d2=1..,d4=1..}] d run random value 2..3
scoreboard players set @e[type=armor_stand,tag=score,limit=1,scores={d2=1..,d3=4..,d=3}] d 4
execute store result score @e[type=armor_stand,tag=score,limit=1,scores={d3=1..,d4=1..}] d run random value 3..4
execute store result score @e[type=armor_stand,tag=score,limit=1,scores={d1=1..,d3=1..,d4=1..}] d run random value 2..4
scoreboard players set @e[type=armor_stand,tag=score,limit=1,scores={d1=1..,d3=1..,d4=1..,d=2}] d 1
execute store result score @e[type=armor_stand,tag=score,limit=1,scores={d1=1..,d2=1..,d3=1..}] d run random value 1..3
execute store result score @e[type=armor_stand,tag=score,limit=1,scores={d4=1..,d3=1..,d2=1..}] d run random value 2..4
execute store result score @e[type=armor_stand,tag=score,limit=1,scores={d1=1..,d2=1..,d4=1..}] d run random value 1..3
scoreboard players set @e[type=armor_stand,tag=score,limit=1,scores={d1=1..,d2=1..,d4=1..,d=3}] d 4
execute store result score @e[type=armor_stand,tag=score,limit=1,scores={d1=1..,d2=1..,d3=1..,d4=1..}] d run random value 1..4


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


execute as @e[type=armor_stand,tag=score] run tellraw @a [{"bold":true,"color":"gold","text":"Round "},{"score":{"name":"@s","objective":"rounds"}},{"text":":"}]
execute as @e[type=armor_stand,tag=score,scores={rounds=10}] run tellraw @a [{"bold":true,"color":"red","text":"Final round!"}]


execute as @e[type=armor_stand,tag=score,scores={t=1}] run schedule function a:deathmessage 20t
execute as @e[type=armor_stand,tag=score,scores={t=2}] run schedule function a:blockmessage 20t
execute as @e[type=armor_stand,tag=score,scores={t=3}] run schedule function a:itemmessage 20t

# give bonus items
execute as @e[type=armor_stand,tag=score,limit=1,scores={d=1}] run schedule function a:zzzd1bonus 120t
execute as @e[type=armor_stand,tag=score,limit=1,scores={d=2}] run schedule function a:zzzd2bonus 120t
execute as @e[type=armor_stand,tag=score,limit=1,scores={d=3}] run schedule function a:zzzd3bonus 120t
execute as @e[type=armor_stand,tag=score,limit=1,scores={d=4}] run schedule function a:zzzd4bonus 120t