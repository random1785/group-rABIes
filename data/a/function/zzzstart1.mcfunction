title @a times 10 40 10
scoreboard players set @a lobby 0
scoreboard players set @e[type=armor_stand,tag=score] round 1
scoreboard players set @e[type=armor_stand,tag=score] scoretick -300
gamemode survival @a
spreadplayers 0 0 0 400000 true @a
effect give @a minecraft:mining_fatigue 15 255 true
effect give @a resistance 15 255 true
schedule function a:zzzstart2 60t


# disables team trigger
execute as @a run trigger t1 add 0
execute as @a run trigger t2 add 0
execute as @a run trigger t3 add 0
execute as @a run trigger t4 add 0
execute as @a run trigger t5 add 0
execute as @a run trigger t7 add 0
execute as @a run trigger t6 add 0