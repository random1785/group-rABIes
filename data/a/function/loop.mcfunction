execute store result score @e[type=minecraft:armor_stand,limit=1,tag=score] pcount run execute if entity @a
execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] pcount < @e[type=minecraft:armor_stand,limit=1,tag=score] tpcount run function a:zzzleave
execute store result score @e[type=minecraft:armor_stand,limit=1,tag=score] tpcount run execute if entity @a
execute as @e[type=armor_stand,tag=newcheck] run execute as @a run execute unless score @s score matches -69421.. run schedule function a:zzzjoin 1t


# team stuff
execute as @a[scores={t1=1..}] run tellraw @a [{"color":"aqua","selector":"@s"},{"text":" has joined team 1!"}]
execute as @a[scores={t1=1..}] run scoreboard players set @s team 1
execute as @a[scores={t1=1..}] run scoreboard players reset @s t1

execute as @a[scores={t2=1..}] run tellraw @a [{"color":"green","selector":"@s"},{"text":" has joined team 2!"}]
execute as @a[scores={t2=1..}] run scoreboard players set @s team 2
execute as @a[scores={t2=1..}] run scoreboard players reset @s t2

execute as @a[scores={t3=1..}] run tellraw @a [{"color":"gold","selector":"@s"},{"text":" has joined team 3!"}]
execute as @a[scores={t3=1..}] run scoreboard players set @s team 3
execute as @a[scores={t3=1..}] run scoreboard players reset @s t3

execute as @a[scores={t4=1..}] run tellraw @a [{"color":"light_purple","selector":"@s"},{"text":" has joined team 4!"}]
execute as @a[scores={t4=1..}] run scoreboard players set @s team 4
execute as @a[scores={t4=1..}] run scoreboard players reset @s t4

execute as @a[scores={t5=1..}] run tellraw @a [{"color":"blue","selector":"@s"},{"text":" has joined team 5!"}]
execute as @a[scores={t5=1..}] run scoreboard players set @s team 5
execute as @a[scores={t5=1..}] run scoreboard players reset @s t5

execute as @a[scores={t6=1..}] run tellraw @a [{"color":"red","selector":"@s"},{"text":" has joined team 6!"}]
execute as @a[scores={t6=1..}] run scoreboard players set @s team 6
execute as @a[scores={t6=1..}] run scoreboard players reset @s t6

execute as @a[scores={t7=1..}] run tellraw @a [{"color":"yellow","selector":"@s"},{"text":" has joined team 7!"}]
execute as @a[scores={t7=1..}] run scoreboard players set @s team 7
execute as @a[scores={t7=1..}] run scoreboard players reset @s t7


execute unless entity @e[limit=1,tag=score,scores={round=1}] positioned 12.79 308.35 0.70 run scoreboard players enable @a[distance=..30] t7
execute unless entity @e[limit=1,tag=score,scores={round=1}] positioned 12.79 308.35 0.70 run scoreboard players enable @a[distance=..30] t6
execute unless entity @e[limit=1,tag=score,scores={round=1}] positioned 12.79 308.35 0.70 run scoreboard players enable @a[distance=..30] t5
execute unless entity @e[limit=1,tag=score,scores={round=1}] positioned 12.79 308.35 0.70 run scoreboard players enable @a[distance=..30] t4
execute unless entity @e[limit=1,tag=score,scores={round=1}] positioned 12.79 308.35 0.70 run scoreboard players enable @a[distance=..30] t3
execute unless entity @e[limit=1,tag=score,scores={round=1}] positioned 12.79 308.35 0.70 run scoreboard players enable @a[distance=..30] t2
execute unless entity @e[limit=1,tag=score,scores={round=1}] positioned 12.79 308.35 0.70 run scoreboard players enable @a[distance=..30] t1

execute in minecraft:the_nether positioned 11.08 159.00 4.82 run scoreboard players enable @a[distance=..60] t1
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run scoreboard players enable @a[distance=..60] t2
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run scoreboard players enable @a[distance=..60] t3
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run scoreboard players enable @a[distance=..60] t4
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run scoreboard players enable @a[distance=..60] t5
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run scoreboard players enable @a[distance=..60] t6
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run scoreboard players enable @a[distance=..60] t7



# POWERUP
execute as @e[tag=score,scores={round=1,scoretick=10..}] run execute as @a[scores={pup=1..}] run function a:zzzpowerup
execute as @e[tag=score,scores={round=1,scoretick=-10..9}] run scoreboard players reset @a pup



effect give @a[scores={lobby=1..}] resistance 1 254 true
effect give @a[scores={lobby=1..}] mining_fatigue 1 254 true
execute positioned 12.79 308.35 0.70 run effect give @a[distance=..30] mining_fatigue 1 254 true
execute positioned 12.79 308.35 0.70 run effect give @a[distance=..30] resistance 1 254 true
execute positioned 22.41 309.99 0.39 run effect give @a[distance=..10] saturation 1 254 true
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run effect give @a[distance=..60] resistance 1 254 true
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run effect give @a[distance=..60] mining_fatigue 1 254 true
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run effect give @a[distance=..60] saturation 1 254 true
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run tp @e[type=enderman,distance=..60,tag=!end] ~ 0 ~
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run tag @e[type=enderman,distance=..60,tag=!end] add end
scoreboard players add @e[type=armor_stand,tag=score,scores={round=1}] scoretick 1
execute as @e[tag=score,type=armor_stand,scores={scoretick=-160..0}] run execute as @e[tag=start] at @s run execute as @a[gamemode=survival,distance=1..] run tag @s add botch
execute as @e[tag=score,type=armor_stand,scores={scoretick=-160..0}] run execute as @e[tag=start] at @s run execute as @a[gamemode=survival,distance=1..] run function a:zzzbotched

execute as @e[type=armor_stand,scores={scoretick=0..10}] at @a run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace glass
tag @a[tag=!new] add new
team join a @a[tag=!new]


# round is over calculations
# execute as @a[scores={done=1..}] run execute unless entity @a[gamemode=survival,scores={done=0,score=1..}] run function a:zzzdone


# timers
execute as @e[tag=score,scores={round=1,ex=1,scoretick=0..}] run function a:zzzex1
execute as @e[tag=score,scores={round=1,ex=2,scoretick=0..}] run function a:zzzex2
execute as @e[tag=score,scores={round=1,ex=3,scoretick=0..}] run function a:zzzex3
execute as @e[tag=score,scores={round=1,ex=5,scoretick=0..}] run function a:zzzex5



# pre round timer
execute as @e[tag=score,scores={round=1,scoretick=-200}] run title @a title {"text":"10","color":"green"}
execute as @e[tag=score,scores={round=1,scoretick=-180}] run title @a title {"text":"9","color":"green"}
execute as @e[tag=score,scores={round=1,scoretick=-160}] run title @a title {"text":"8","color":"green"}
execute as @e[tag=score,scores={round=1,scoretick=-140}] run title @a title {"text":"7","color":"green"}
execute as @e[tag=score,scores={round=1,scoretick=-120}] run title @a title {"text":"6","color":"green"}
execute as @e[tag=score,scores={round=1,scoretick=-100}] run title @a title {"text":"5","color":"yellow"}
execute as @e[tag=score,scores={round=1,scoretick=-80}] run title @a title {"text":"4","color":"yellow"}
execute as @e[tag=score,scores={round=1,scoretick=-60}] run title @a title {"text":"3","color":"gold"}
execute as @e[tag=score,scores={round=1,scoretick=-40}] run title @a title {"text":"2","color":"red"}
execute as @e[tag=score,scores={round=1,scoretick=-20}] run title @a title {"text":"1","color":"red"}
execute as @e[tag=score,scores={round=1,scoretick=0}] run title @a title {"text":"GO!","color":"dark_red"}


# pre round sounds
execute as @e[tag=score,scores={round=1,scoretick=-200}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={round=1,scoretick=-180}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={round=1,scoretick=-160}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={round=1,scoretick=-140}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={round=1,scoretick=-120}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={round=1,scoretick=-100}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={round=1,scoretick=-80}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={round=1,scoretick=-60}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={round=1,scoretick=-40}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={round=1,scoretick=-20}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={round=1,scoretick=0}] at @a run playsound minecraft:entity.ender_dragon.growl player @a

execute as @e[tag=score,scores={scoretick=-40..-20}] run execute as @a at @s run spawnpoint @s
execute as @e[tag=score,scores={scoretick=-5}] run execute as @e[tag=start] run kill @s
execute as @e[tag=score,scores={scoretick=-40..-20}] run execute as @a at @s run setworldspawn ~ ~ ~


# win detection has been moved


# max damage threshold screen
# execute as @e[type=minecraft:armor_stand,tag=score,scores={scoretick=10..9999,overkill=1..}] if score @s overkill <= @s scoretick run title @a[tag=!a] title {"text":"Time's up!","color":"dark_red"}
# execute as @e[type=minecraft:armor_stand,tag=score,scores={scoretick=10..9999,overkill=1..}] if score @s overkill <= @s scoretick run execute unless score @s gone matches 1 run playsound minecraft:entity.wither.death player @a[tag=!a]
# execute as @e[type=minecraft:armor_stand,tag=score,scores={scoretick=10..9999,overkill=1..}] if score @s overkill <= @s scoretick run tellraw @a {"text":"Max damage threshold reached! Ending the round...","color":"dark_red"}
# execute as @e[type=minecraft:armor_stand,tag=score,scores={scoretick=10..9999,overkill=1..}] if score @s overkill <= @s scoretick run execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] rounds matches ..9 run schedule function a:zzzscorecalc1 100t
# execute as @e[type=minecraft:armor_stand,tag=score,scores={scoretick=10..9999,overkill=1..}] if score @s overkill <= @s scoretick run execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] rounds matches 10.. run schedule function a:zzzfinalcalc 100t
# execute as @e[type=minecraft:armor_stand,tag=score,scores={scoretick=10..9999,overkill=1..}] if score @s overkill <= @s scoretick run gamemode spectator @a[tag=!a]
# execute as @e[type=minecraft:armor_stand,tag=score,scores={scoretick=10..9999,overkill=1..}] if score @s overkill <= @s scoretick run scoreboard players set @a[tag=!a] lobby 1
# execute as @e[type=minecraft:armor_stand,tag=score,scores={scoretick=10..9999,overkill=1..}] if score @s overkill <= @s scoretick run scoreboard players set @s round 0
# execute as @e[type=minecraft:armor_stand,tag=score,scores={scoretick=10..9999,overkill=1..}] if score @s overkill <= @s scoretick run scoreboard players operation @a[scores={done=0},tag=!a] calc = @e[type=armor_stand,tag=score] scoretick
# execute as @e[type=minecraft:armor_stand,tag=score,scores={scoretick=10..9999,overkill=1..}] if score @s overkill <= @s scoretick run scoreboard players set @s overkill 694200


# round platform detection
execute as @e[type=minecraft:armor_stand,tag=score,scores={scoretick=-199}] at @s if entity @a[distance=..35,gamemode=survival] run function a:zzzbotched
execute as @e[type=minecraft:armor_stand,tag=score,scores={scoretick=-19}] at @s if entity @a[distance=..35,gamemode=survival] run function a:zzzbotched
# glass break detection
execute as @e[type=minecraft:armor_stand,tag=score,scores={scoretick=-240..-1}] at @s if entity @a[scores={glass=1..}] run function a:zzzglass


# make golems weak
execute as @e[type=iron_golem,tag=!weak] run attribute @s minecraft:max_health base set 20
tag @e[type=iron_golem,tag=!weak] add weak

# make pillagers more likely to be patrols
execute as @e[type=pillager,tag=!weak] run execute store result score @s zzzdocument run random value 1..2
execute as @e[type=pillager,tag=!weak,scores={zzzdocument=1}] run data merge entity @s {drop_chances: {head: 2.0f}, PatrolLeader: 1b, equipment: {mainhand: {id: "minecraft:crossbow", count: 1}, head: {id: "minecraft:white_banner", count: 1, components: {"minecraft:rarity": "uncommon", "minecraft:item_name": {translate: "block.minecraft.ominous_banner"}, "minecraft:banner_patterns": [{pattern: "minecraft:rhombus", color: "cyan"}, {pattern: "minecraft:stripe_bottom", color: "light_gray"}, {pattern: "minecraft:stripe_center", color: "gray"}, {pattern: "minecraft:border", color: "light_gray"}, {pattern: "minecraft:stripe_middle", color: "black"}, {pattern: "minecraft:half_horizontal", color: "light_gray"}, {pattern: "minecraft:circle", color: "light_gray"}, {pattern: "minecraft:border", color: "black"}], "minecraft:tooltip_display": {hidden_components: ["minecraft:banner_patterns"]}}}}}
execute as @e[type=pillager,tag=!weak] run tag @s add weak