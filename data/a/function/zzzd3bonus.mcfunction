execute as @a at @s run playsound minecraft:block.vault.open_shutter ambient @s ~ ~ ~ 500
tellraw @a {"color":"light_purple","text":"Fast start items given! Enjoy :D"}


clear @a
give @a stone_axe
give @a stone_pickaxe
give @a stone_shovel
give @a pale_oak_log 8
give @a mushroom_stew 1
give @a nether_star[consumable={consume_seconds:0.5,animation:"spyglass",sound:"block.trial_spawner.detect_player",on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:wind_charged",amplifier:0,duration:40,show_particles:0b,show_icon:0b}]}]},use_cooldown={seconds:2},custom_name={"bold":true,"color":"dark_purple","text":"Aspect of the Nether Star"},lore=[{"color":"dark_purple","text":"Teleports you 20 blocks in the direction you are looking!"}]] 128