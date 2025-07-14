#adv
execute as @e[scores={round=1,t=1,scoretick=1..}] run function a:zzzquartersec1


#block
execute as @e[scores={round=1,t=2,message=1..50,scoretick=1..}] run function a:zzzquartersec2
execute as @e[scores={round=1,t=2,message=51..100,scoretick=1..}] run function a:zzzquartersec3
execute as @e[scores={round=1,t=2,message=101..150,scoretick=1..}] run function a:zzzquartersec3a
execute as @e[scores={round=1,t=2,message=151..200,scoretick=1..}] run function a:zzzquartersec4
execute as @e[scores={round=1,t=2,message=200..242,scoretick=1..}] run function a:zzzquartersec5



#item
execute as @e[scores={t=3,round=1,message=1..35,scoretick=1..}] run function a:zzzquartersec6
execute as @e[scores={t=3,round=1,message=36..74,scoretick=1..}] run function a:zzzquartersec7



# make trigger for forfeit
gamemode spectator @a[scores={zzzforfeit=1..},tag=!a]
execute as @a[scores={zzzforfeit=1..},tag=!a] run tellraw @a [{"selector":"@s","color":"dark_red"},{"text":" has forfeited."}]
execute as @a[scores={zzzforfeit=1..},tag=!a] run execute as @e[tag=score,scores={ex=1,round=1}] run scoreboard players set @s calc 12000
execute as @a[scores={zzzforfeit=1..},tag=!a] run execute as @e[tag=score,scores={ex=2,round=1}] run scoreboard players set @s calc 8000
execute as @a[scores={zzzforfeit=1..},tag=!a] run execute as @e[tag=score,scores={ex=3,round=1}] run scoreboard players set @s calc 4670
execute as @a[scores={zzzforfeit=1..},tag=!a] run execute as @e[tag=score,scores={ex=5,round=1}] run scoreboard players set @s calc 2400
execute if entity @a[scores={zzzforfeit=1..},tag=!a] run execute as @a at @s run playsound minecraft:block.pointed_dripstone.land
execute as @a[scores={zzzforfeit=1..},tag=!a] run execute unless entity @a[gamemode=survival,scores={done=0,score=1..}] run function a:zzzdone
tag @a[scores={zzzforfeit=1..},tag=!a] add a


# tp 
execute as @e[tag=score,scores={round=1,scoretick=1..}] run execute as @a[scores={tp=1..}] run tellraw @a [{"color":"gold","selector":"@s","bold":true},{"bold":false,"text":" has teleported to a random teammate!"}]
execute as @e[tag=score,scores={round=1,scoretick=1..}] run execute as @a[scores={tp=1..,team=1}] at @s run tp @s @r[gamemode=survival,scores={team=1},distance=1..]
execute as @e[tag=score,scores={round=1,scoretick=1..}] run execute as @a[scores={tp=1..,team=2}] at @s run tp @s @r[gamemode=survival,scores={team=2},distance=1..]
execute as @e[tag=score,scores={round=1,scoretick=1..}] run execute as @a[scores={tp=1..,team=3}] at @s run tp @s @r[gamemode=survival,scores={team=3},distance=1..]
execute as @e[tag=score,scores={round=1,scoretick=1..}] run execute as @a[scores={tp=1..,team=4}] at @s run tp @s @r[gamemode=survival,scores={team=4},distance=1..]
execute as @e[tag=score,scores={round=1,scoretick=1..}] run execute as @a[scores={tp=1..,team=5}] at @s run tp @s @r[gamemode=survival,scores={team=5},distance=1..]
execute as @e[tag=score,scores={round=1,scoretick=1..}] run execute as @a[scores={tp=1..,team=6}] at @s run tp @s @r[gamemode=survival,scores={team=6},distance=1..]
execute as @e[tag=score,scores={round=1,scoretick=1..}] run execute as @a[scores={tp=1..,team=7}] at @s run tp @s @r[gamemode=survival,scores={team=7},distance=1..]


# document
tellraw @a[scores={zzzdocument=1..}] {"text":"[Information Document]","color":"green","click_event":{"action":"open_url","url":"https://docs.google.com/spreadsheets/d/1a1wW-kiejFnOrQCGWzjgrUkicAunYbu1Qpk1kHMScqQ/edit?usp=sharing"}}



# death messsage reminder
scoreboard players reset @a reminder
scoreboard players reset @a zzzforfeit
scoreboard players reset @a zzzdocument
scoreboard players reset @a tp
scoreboard players enable @a reminder
scoreboard players enable @a zzzforfeit
scoreboard players enable @a zzzdocument
scoreboard players enable @a tp



# when a player finishes
execute as @a[scores={done=1..},tag=!a] at @s run playsound minecraft:ui.toast.challenge_complete
execute as @a[scores={done=1..},tag=!a] run scoreboard players add @e[type=armor_stand,tag=score] place 1
execute as @a[scores={done=1..},tag=!a] run title @s title [{"text":"Time taken: ","color":"gold"},{"score":{"name":"@e[type=armor_stand,tag=score]","objective":"scoretick"}},{"text":" ticks"}]
execute as @a[scores={done=1..},tag=!a] run tellraw @a [{"bold":true,"selector":"@s","color":"aqua"},{"text":" has completed the objective in "},{"score":{"name":"@e[type=armor_stand,tag=score]","objective":"scoretick"}},{"text":" ticks!"}]


# 	placement points
execute as @e[type=armor_stand,tag=score,scores={place=1}] run execute as @a[scores={done=1..},tag=!a] run tellraw @a [{"color":"gold","text":"Since "},{"selector":"@s"},{"text":" was 1st, they get a score bonus of -2000!"}]
execute as @e[type=armor_stand,tag=score,scores={place=1}] run execute as @a[scores={done=1..},tag=!a] run scoreboard players set @s place 1

execute as @e[type=armor_stand,tag=score,scores={place=2}] run execute as @a[scores={done=1..},tag=!a] run tellraw @a [{"color":"gold","text":"Since "},{"selector":"@s"},{"text":" was 2nd, they get a score bonus of -1000!"}]
execute as @e[type=armor_stand,tag=score,scores={place=2}] run execute as @a[scores={done=1..},tag=!a] run scoreboard players set @s place 2

execute as @e[type=armor_stand,tag=score,scores={place=3}] run execute as @a[scores={done=1..},tag=!a] run tellraw @a [{"color":"gold","text":"Since "},{"selector":"@s"},{"text":" was 3rd, they get a score bonus of -500!"}]
execute as @e[type=armor_stand,tag=score,scores={place=3}] run execute as @a[scores={done=1..},tag=!a] run scoreboard players set @s place 3



execute if score @e[limit=1,type=armor_stand,tag=score] first matches -100 run execute as @a[scores={done=1..},tag=!a] at @s run scoreboard players operation @e[limit=1,type=minecraft:armor_stand,tag=score] first = @e[limit=1,type=minecraft:armor_stand] scoretick

# 	set the multiplier
execute as @a[scores={done=1..},tag=!a] run execute as @e[limit=1,type=minecraft:armor_stand,tag=score,scores={first=1..999},tag=!z] run tellraw @a [{"color":"dark_red","text":"A "},{"bold":true,"text":"5x"},{"text":" multiplier has been applied to this round, and the time limit is now "},{"bold":true,"text":"2000"},{"text":" ticks."}]
execute as @a[scores={done=1..},tag=!a] run execute as @e[limit=1,type=minecraft:armor_stand,tag=score,scores={first=1000..1999},tag=!z] run tellraw @a [{"color":"red","text":"A "},{"bold":true,"text":"3x"},{"text":" multiplier has been applied to this round, and the time limit is now "},{"bold":true,"text":"4000"},{"text":" ticks."}]
execute as @a[scores={done=1..},tag=!a] run execute as @e[limit=1,type=minecraft:armor_stand,tag=score,scores={first=2000..3999},tag=!z] run tellraw @a [{"color":"yellow","text":"A "},{"bold":true,"text":"2x"},{"text":" multiplier has been applied to this round, and the time limit is now "},{"bold":true,"text":"7000"},{"text":" ticks."}]
execute as @a[scores={done=1..},tag=!a] run execute as @e[limit=1,type=minecraft:armor_stand,tag=score,scores={first=4000..10000},tag=!z] run tellraw @a {"color":"dark_green","text":"No multiplier has been applied to this round."}

# ensure forfeited players do not get screwed over
execute as @a[scores={done=1..},tag=!a] run execute as @e[limit=1,type=minecraft:armor_stand,tag=score,scores={first=1..999},tag=!z] run scoreboard players set @a[scores={calc=12000}] calc 2400
execute as @a[scores={done=1..},tag=!a] run execute as @e[limit=1,type=minecraft:armor_stand,tag=score,scores={first=1000..1999},tag=!z] run scoreboard players set @a[scores={calc=12000}] calc 4670
execute as @a[scores={done=1..},tag=!a] run execute as @e[limit=1,type=minecraft:armor_stand,tag=score,scores={first=2000..3999},tag=!z] run scoreboard players set @a[scores={calc=12000}] calc 8000


execute as @a[scores={done=1..},tag=!a] run execute as @e[limit=1,type=minecraft:armor_stand,tag=score,scores={first=1..999},tag=!z] run scoreboard players set @s ex 5
execute as @a[scores={done=1..},tag=!a] run execute as @e[limit=1,type=minecraft:armor_stand,tag=score,scores={first=1000..1999},tag=!z] run scoreboard players set @s ex 3
execute as @a[scores={done=1..},tag=!a] run execute as @e[limit=1,type=minecraft:armor_stand,tag=score,scores={first=2000..3999},tag=!z] run scoreboard players set @s ex 2
execute as @a[scores={done=1..},tag=!a] run execute as @e[limit=1,type=minecraft:armor_stand,tag=score,scores={first=4000..10000},tag=!z] run scoreboard players set @s ex 1

execute as @a[scores={done=1..},tag=!a] run execute as @e[limit=1,type=minecraft:armor_stand,tag=score] run tag @s add z

# 	rest of the stuff
gamemode spectator @a[scores={done=1..},tag=!a]
scoreboard players operation @a[scores={done=1..},tag=!a] calc = @e[type=armor_stand,tag=score] scoretick
tag @a[scores={done=1..},tag=!a] add a
execute as @a[scores={done=1..}] run execute unless entity @a[gamemode=survival,scores={done=0,score=1..}] run function a:zzzdone



# make ending screen
execute as @e[tag=score,scores={ex=1,scoretick=10000..10010}] run function a:zzzend1
execute as @e[tag=score,scores={ex=2,scoretick=7000..7010}] run function a:zzzend2
execute as @e[tag=score,scores={ex=3,scoretick=4000..4010}] run function a:zzzend3
execute as @e[tag=score,scores={ex=5,scoretick=2000..2010}] run function a:zzzend5



schedule function a:zzzquartersec 7t

# seed check
execute positioned 12.79 308.35 0.70 as @a[distance=..30] run function a:zzzseedcheck