scoreboard players set check check 0
execute if block 0 51 0 minecraft:gravel run scoreboard players add check check 1
execute if block 9 45 9 minecraft:iron_ore run scoreboard players add check check 1
execute if block 8 13 -5 minecraft:lapis_ore run scoreboard players add check check 1
execute if block 10 -11 5 minecraft:deepslate_diamond_ore run scoreboard players add check check 1
execute if block -1 -2 -4 minecraft:deepslate_copper_ore run scoreboard players add check check 1
execute if block 2 -41 -3 minecraft:deepslate_lapis_ore run scoreboard players add check check 1
execute if block 12 -54 2 minecraft:deepslate_iron_ore run scoreboard players add check check 1
execute if block 4 -56 9 minecraft:deepslate_diamond_ore run scoreboard players add check check 1
execute if block 2 -48 3 minecraft:deepslate_gold_ore run scoreboard players add check check 1
execute if block 2 -48 4 minecraft:deepslate_redstone_ore run scoreboard players add check check 1

# debug line
execute if score check check matches ..9 run tellraw @a [{"text":"seed check failed, "},{"score":{"name":"check","objective":"check"}},{"text":" out of 10 checks passed."}]


# actual line
execute if score check check matches ..9 run tellraw @a [{"color":"dark_red","bold":true,"text":"Detected the wrong seed! "},{"text":"Please regenerate the world with the seed ","bold":false},{"underlined":true,"text":"1785"}]