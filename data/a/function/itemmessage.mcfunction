execute as @e[type=armor_stand,tag=score,limit=1] run scoreboard players remove Round ti 1

tellraw @a {"text":"A friendly note that offhanding, for some reason, does not get detected. Please place items in your MAIN inventory!","color":"gray"}

execute as @e[type=armor_stand,tag=score,limit=1,scores={d=1}] run scoreboard players remove Round d1 1
execute as @e[type=armor_stand,tag=score,limit=1,scores={d=2}] run scoreboard players remove Round d2 1
execute as @e[type=armor_stand,tag=score,limit=1,scores={d=3}] run scoreboard players remove Round d3 1
execute as @e[type=armor_stand,tag=score,limit=1,scores={d=4}] run scoreboard players remove Round d4 1

execute as @e[type=armor_stand,tag=score,limit=1,scores={d=1}] run execute store result score @e[type=armor_stand,tag=score,limit=1] message run random value 1..10
execute as @e[type=armor_stand,tag=score,limit=1,scores={d=2}] run execute store result score @e[type=armor_stand,tag=score,limit=1] message run random value 11..51
execute as @e[type=armor_stand,tag=score,limit=1,scores={d=3}] run execute store result score @e[type=armor_stand,tag=score,limit=1] message run random value 52..65
execute as @e[type=armor_stand,tag=score,limit=1,scores={d=4}] run execute store result score @e[type=armor_stand,tag=score,limit=1] message run random value 66..74



execute as @e[scores={message=1}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Bowl]"}]
execute as @e[scores={message=2}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Apple]"}]
execute as @e[scores={message=3}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Stick]"}]
execute as @e[scores={message=4}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Flint]"}]
execute as @e[scores={message=5}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Leather]"}]
execute as @e[scores={message=6}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Ink Sac]"}]
execute as @e[scores={message=7}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Wooden Sword]"}]
execute as @e[scores={message=8}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Stone Shovel]"}]
execute as @e[scores={message=9}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Wooden Hoe]"}]
execute as @e[scores={message=10}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Stone Axe]"}]

execute as @e[scores={message=11}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Minecart with Hopper]"}]
execute as @e[scores={message=12}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Flint and Steel]"}]
execute as @e[scores={message=13}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Wheat]"}]
execute as @e[scores={message=14}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Bread]"}]
execute as @e[scores={message=15}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Leather Cap]"}]
execute as @e[scores={message=16}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Leather Pants]"}]
execute as @e[scores={message=17}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Golden Chestplate]"}]
execute as @e[scores={message=18}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Golden Boots]"}]
execute as @e[scores={message=19}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Painting]"}]
execute as @e[scores={message=20}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Golden Apple]"}]
execute as @e[scores={message=21}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Milk Bucket]"}]
execute as @e[scores={message=22}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Clock]"}]
execute as @e[scores={message=23}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Map]"}]
execute as @e[scores={message=24}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Glass Bottle]"}]
execute as @e[scores={message=25}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Fermented Spider Eye]"}]
execute as @e[scores={message=26}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Glistering Melon Slice]"}]
execute as @e[scores={message=27}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Written Book]"}]
execute as @e[scores={message=28}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Firework Star]"}]
execute as @e[scores={message=29}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Armor Stand]"}]
execute as @e[scores={message=30}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Shield]"}]
execute as @e[scores={message=31}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Iron Nugget]"}]
execute as @e[scores={message=32}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[(Any) Banner Pattern]"}]
execute as @e[scores={message=33}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Brush]"}]
execute as @e[scores={message=34}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Mushroom Stew]"}]
execute as @e[scores={message=35}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Golden Leggings]"}]
execute as @e[scores={message=36}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Cooked Porkchop]"}]
execute as @e[scores={message=37}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Pufferfish]"}]
execute as @e[scores={message=38}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Cooked Cod]"}]
execute as @e[scores={message=39}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Cooked Salmon]"}]
execute as @e[scores={message=40}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Steak]"}]
execute as @e[scores={message=41}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Cooked Chicken]"}]
execute as @e[scores={message=42}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Baked Potato]"}]
execute as @e[scores={message=43}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Golden Carrot]"}]
execute as @e[scores={message=44}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Cooked Mutton]"}]
execute as @e[scores={message=45}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Golden Pickaxe]"}]
execute as @e[scores={message=46}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Iron Axe]"}]
execute as @e[scores={message=47}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Golden Shovel]"}]
execute as @e[scores={message=48}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Iron Sword]"}]
execute as @e[scores={message=49}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[White Bundle]"}]
execute as @e[scores={message=50}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Orange Bundle]"}]
execute as @e[scores={message=51}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Red Bundle]"}]

execute as @e[scores={message=52}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Carrot on a Stick]"}]
execute as @e[scores={message=53}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Armadillo Scute]"}]
execute as @e[scores={message=54}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Wolf Armor]"}]
execute as @e[scores={message=55}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Wind Charge]"}]
execute as @e[scores={message=56}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Beetroot Soup]"}]
execute as @e[scores={message=57}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Splash Potion]"}]
execute as @e[scores={message=58}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Tipped Arrow]"}]
execute as @e[scores={message=59}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Lingering Potion]"}]
execute as @e[scores={message=60}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Suspicious Stew]"}]
execute as @e[scores={message=61}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Trial Key]"}]
execute as @e[scores={message=62}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Pumpkin Pie]"}]
execute as @e[scores={message=63}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Rabbit Stew]"}]
execute as @e[scores={message=64}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Diamond Hoe]"}]
execute as @e[scores={message=65}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Diamond Shovel]"}]

execute as @e[scores={message=66}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Warped Fungus on a Stick]"}]
execute as @e[scores={message=67}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Powder Snow Bucket]"}]
execute as @e[scores={message=68}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Bucket of Pufferfish]"}]
execute as @e[scores={message=69}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Magma Cream]"}]
execute as @e[scores={message=70}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Rabbit Hide]"}]
execute as @e[scores={message=71}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Spectral Arrow]"}]
execute as @e[scores={message=72}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[(Any) Music Disc]"}]
execute as @e[scores={message=73}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Honey Bottle]"}]
execute as @e[scores={message=74}] run tellraw @a [{"color":"red","text":"Goal: "},{"bold":true,"text":"Acquire "},{"text":"[Cookie]"}]








execute as @e run scoreboard players set @s ex 1