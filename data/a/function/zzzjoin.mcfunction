# round joiner
execute as @a[scores={temp=1..}] run execute unless score @s score matches -69421.. run scoreboard players operation @s score = @s temp

# new person
execute as @a run execute unless score @s score matches -69421.. run tag @s add a
execute as @a run execute unless score @s score matches -69421.. run gamemode spectator @s
execute as @a run execute unless score @s score matches -69421.. run tellraw @s {"text":"you have joined in the middle of a round! please spectate the current round and wait for a new one to begin.","color":"gray"}
execute as @a run execute unless score @s score matches -69421.. run tp @s 0 302 0
execute as @a run execute unless score @s score matches -69421.. run tellraw @s {"text":" [direct link to chunkbase]","color":"green","click_event":{"action":"open_url","url":"https://www.chunkbase.com/apps/seed-map#seed=1785"}}
execute as @a run execute unless score @s score matches -69421.. run scoreboard players set @s score -1785

execute as @r unless entity @a[distance=2..] run gamemode survival @a