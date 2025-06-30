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



# make trigger for forefit
gamemode spectator @a[scores={zzzforefit=1..},tag=!a]
execute as @a[scores={zzzforefit=1..},tag=!a] run tellraw @a [{"selector":"@s","color":"dark_red"},{"text":" has forfeited."}]
execute as @a[scores={zzzforefit=1..},tag=!a] run scoreboard players set @s calc 12000
execute if entity @a[scores={zzzforefit=1..},tag=!a] run execute as @a at @s run playsound minecraft:block.pointed_dripstone.land
execute as @a[scores={zzzforefit=1..},tag=!a] run execute unless entity @a[gamemode=survival,scores={done=0,score=1..}] run function a:zzzdone
tag @a[scores={zzzforefit=1..},tag=!a] add a


# tp 
execute as @e[tag=score,scores={round=1,scoretick=1..}] run execute as @a[scores={tp=1..}] run tellraw @a [{"color":"gold","selector":"@s","bold":true},{"bold":false,"text":" has teleported to a random teammate!"}]
execute as @e[tag=score,scores={round=1,scoretick=1..}] run execute as @a[scores={tp=1..,team=1}] at @s run tp @s @r[scores={team=1},distance=1..]
execute as @e[tag=score,scores={round=1,scoretick=1..}] run execute as @a[scores={tp=1..,team=2}] at @s run tp @s @r[scores={team=2},distance=1..]
execute as @e[tag=score,scores={round=1,scoretick=1..}] run execute as @a[scores={tp=1..,team=3}] at @s run tp @s @r[scores={team=3},distance=1..]
execute as @e[tag=score,scores={round=1,scoretick=1..}] run execute as @a[scores={tp=1..,team=4}] at @s run tp @s @r[scores={team=4},distance=1..]
execute as @e[tag=score,scores={round=1,scoretick=1..}] run execute as @a[scores={tp=1..,team=5}] at @s run tp @s @r[scores={team=5},distance=1..]
execute as @e[tag=score,scores={round=1,scoretick=1..}] run execute as @a[scores={tp=1..,team=6}] at @s run tp @s @r[scores={team=6},distance=1..]
execute as @e[tag=score,scores={round=1,scoretick=1..}] run execute as @a[scores={tp=1..,team=7}] at @s run tp @s @r[scores={team=7},distance=1..]





# death messsage reminder
scoreboard players reset @a reminder
scoreboard players reset @a zzzforefit
scoreboard players reset @a tp
scoreboard players enable @a reminder
scoreboard players enable @a zzzforefit
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
execute as @a[scores={done=1..},tag=!a] run execute as @e[limit=1,type=minecraft:armor_stand,tag=score,scores={first=1..999},tag=!z] run tellraw @a [{"color":"dark_red","text":"A "},{"bold":true,"text":"5x"},{"text":" multiplier has been applied to this round."}]
execute as @a[scores={done=1..},tag=!a] run execute as @e[limit=1,type=minecraft:armor_stand,tag=score,scores={first=1000..1999},tag=!z] run tellraw @a [{"color":"red","text":"A "},{"bold":true,"text":"3x"},{"text":" multiplier has been applied to this round."}]
execute as @a[scores={done=1..},tag=!a] run execute as @e[limit=1,type=minecraft:armor_stand,tag=score,scores={first=2000..3999},tag=!z] run tellraw @a [{"color":"yellow","text":"A "},{"bold":true,"text":"2x"},{"text":" multiplier has been applied to this round."}]
execute as @a[scores={done=1..},tag=!a] run execute as @e[limit=1,type=minecraft:armor_stand,tag=score,scores={first=4000..10000},tag=!z] run tellraw @a {"color":"dark_green","text":"No multiplier has been applied to this round."}

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



# make 10 minute ending screen
execute as @e[tag=score,scores={scoretick=10000..10010}] run execute unless score @s gone matches 1 run title @a[tag=!a] title {"text":"Time's up!","color":"dark_red"}
execute as @e[tag=score,scores={scoretick=10000..10010}] run execute unless score @s gone matches 1 run execute as @a[tag=!a] run tellraw @a [{"selector":"@s","color":"dark_red"},{"text":" has ran out of time, ending with a score of 12000."}]
execute as @e[tag=score,scores={scoretick=10000..10010}] at @a[tag=!a] run execute unless score @s gone matches 1 run playsound minecraft:entity.wither.death player @a[tag=!a]
execute as @e[tag=score,scores={scoretick=10000..10010}] run execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] rounds matches ..9 run schedule function a:zzzscorecalc1 100t
execute as @e[tag=score,scores={scoretick=10000..10010}] run execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] rounds matches 10.. run schedule function a:zzzfinalcalc 100t
execute as @e[tag=score,scores={scoretick=10000..10010}] run gamemode spectator @a[tag=!a]
execute as @e[tag=score,scores={scoretick=10000..10010}] run scoreboard players set @a[tag=!a] lobby 1
execute as @e[tag=score,scores={scoretick=10000..10010}] run scoreboard players set @s round 0
execute as @e[tag=score,scores={scoretick=10000..10010}] run scoreboard players set @a[scores={done=0},tag=!a] calc 12000
execute as @e[tag=score,scores={scoretick=10000..10010}] run scoreboard players set @s scoretick 12000


schedule function a:zzzquartersec 7t