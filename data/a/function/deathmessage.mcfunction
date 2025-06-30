execute as @e[type=armor_stand,tag=score,limit=1] run scoreboard players remove Round ta 1

execute as @e[type=armor_stand,tag=score,limit=1,scores={d=1}] run scoreboard players remove Round d1 1
execute as @e[type=armor_stand,tag=score,limit=1,scores={d=2}] run scoreboard players remove Round d2 1
execute as @e[type=armor_stand,tag=score,limit=1,scores={d=3}] run scoreboard players remove Round d3 1
execute as @e[type=armor_stand,tag=score,limit=1,scores={d=4}] run scoreboard players remove Round d4 1

execute as @e[type=armor_stand,tag=score,limit=1,scores={d=1}] run execute store result score @e[type=armor_stand,tag=score,limit=1] message run random value 2..8
execute as @e[type=armor_stand,tag=score,limit=1,scores={d=2}] run execute store result score @e[type=armor_stand,tag=score,limit=1] message run random value 9..28
execute as @e[type=armor_stand,tag=score,limit=1,scores={d=3}] run execute store result score @e[type=armor_stand,tag=score,limit=1] message run random value 29..42
execute as @e[type=armor_stand,tag=score,limit=1,scores={d=4}] run execute store result score @e[type=armor_stand,tag=score,limit=1] message run random value 43..50



execute as @e[scores={message=2}] run tellraw @a {"text":"Goal: [The Parrots and the Bats]","color":"red","hover_event":{"action":"show_text","value":{"text":"The Parrots and the Bats\nBreed two mobs","color":"gold"}}}
execute as @e[scores={message=3}] run tellraw @a {"text":"Goal: [A Seedy Place]","color":"red","hover_event":{"action":"show_text","value":{"text":"A Seedy Place\nPlant a seed","color":"gold"}}}
execute as @e[scores={message=4}] run tellraw @a {"text":"Goal: [Husbandry Root]","color":"red","hover_event":{"action":"show_text","value":{"text":"Husbandry Root\nEating anything","color":"gold"}}}
execute as @e[scores={message=5}] run tellraw @a {"text":"Goal: [Adventure Root]","color":"red","hover_event":{"action":"show_text","value":{"text":"Adventure Root\nKill or be killed by any creature","color":"gold"}}}
execute as @e[scores={message=6}] run tellraw @a {"text":"Goal: [Minecraft Root]","color":"red","hover_event":{"action":"show_text","value":{"text":"Minecraft Root\nGet a crafting table","color":"gold"}}}
execute as @e[scores={message=7}] run tellraw @a {"text":"Goal: [Stone Age]","color":"red","hover_event":{"action":"show_text","value":{"text":"Stone Age\nGet cobblestone","color":"gold"}}}
execute as @e[scores={message=8}] run tellraw @a {"text":"Goal: [Getting an Upgrade]","color":"red","hover_event":{"action":"show_text","value":{"text":"Getting an Upgrade\nGet a stone pickaxe","color":"gold"}}}

execute as @e[scores={message=9}] run tellraw @a {"text":"Goal: [Minecraft: Trial(s) Edition]","color":"red","hover_event":{"action":"show_text","value":{"text":"Minecraft: Trial(s) Edition\nEnter a Trial Chamber","color":"gold"}}}
execute as @e[scores={message=10}] run tellraw @a {"text":"Goal: [Who Needs Rockets?]","color":"red","hover_event":{"action":"show_text","value":{"text":"Who Needs Rockets?\nUse a Wind Charge to launch yourself  8 blocks upwards","color":"gold"}}}
execute as @e[scores={message=11}] run tellraw @a {"text":"Goal: [Lighten Up]","color":"red","hover_event":{"action":"show_text","value":{"text":"Lighten Up\nAxe a Copper Bulb","color":"gold"}}}
execute as @e[scores={message=12}] run tellraw @a {"text":"Goal: [Blowback]","color":"red","hover_event":{"action":"show_text","value":{"text":"Blowback\nReturn to Sender with a Breeze","color":"gold"}}}
execute as @e[scores={message=13}] run tellraw @a {"text":"Goal: [Under Lock and Key]","color":"red","hover_event":{"action":"show_text","value":{"text":"Under Lock and Key\nOpen a trial vault","color":"gold"}}}
execute as @e[scores={message=14}] run tellraw @a {"text":"Goal: [Crafting a New Look]","color":"red","hover_event":{"action":"show_text","value":{"text":"Crafting a New Look\nUse any armor trim","color":"gold"}}}
execute as @e[scores={message=15}] run tellraw @a {"text":"Goal: [Monster Hunter]","color":"red","hover_event":{"action":"show_text","value":{"text":"Monster Hunter\nKill a hostile monster","color":"gold"}}}
execute as @e[scores={message=16}] run tellraw @a {"text":"Goal: [Take Aim]","color":"red","hover_event":{"action":"show_text","value":{"text":"Take Aim\nShoot anything with a bow","color":"gold"}}}
execute as @e[scores={message=17}] run tellraw @a {"text":"Goal: [Sweet Dreams]","color":"red","hover_event":{"action":"show_text","value":{"text":"Sweet Dreams\nSleep in a bed","color":"gold"}}}
execute as @e[scores={message=18}] run tellraw @a {"text":"Goal: [Best Friends Forever]","color":"red","hover_event":{"action":"show_text","value":{"text":"Best Friends Forever\nTame an animal","color":"gold"}}}
execute as @e[scores={message=19}] run tellraw @a {"text":"Goal: [Fishy Business]","color":"red","hover_event":{"action":"show_text","value":{"text":"Fishy Business\nCatch a fish with a fishing rod","color":"gold"}}}
execute as @e[scores={message=20}] run tellraw @a {"text":"Goal: [Glow and Behold!]","color":"red","hover_event":{"action":"show_text","value":{"text":"Glow and Behold!\nUse glow ink on a sign","color":"gold"}}}
execute as @e[scores={message=21}] run tellraw @a {"text":"Goal: [Acquire Hardware]","color":"red","hover_event":{"action":"show_text","value":{"text":"Acquire Hardware\nGet an iron ingot","color":"gold"}}}
execute as @e[scores={message=22}] run tellraw @a {"text":"Goal: [Isn't It Iron Pick]","color":"red","hover_event":{"action":"show_text","value":{"text":"Isn't It Iron Pick\nGet an iron pickaxe","color":"gold"}}}
execute as @e[scores={message=23}] run tellraw @a {"text":"Goal: [Diamonds!]","color":"red","hover_event":{"action":"show_text","value":{"text":"Diamonds!\nuhh idk you're on your own","color":"gold"}}}
execute as @e[scores={message=24}] run tellraw @a {"text":"Goal: [Hot Stuff]","color":"red","hover_event":{"action":"show_text","value":{"text":"Hot Stuff\nGet a lava bucket","color":"gold"}}}
execute as @e[scores={message=25}] run tellraw @a {"text":"Goal: [Suit Up]","color":"red","hover_event":{"action":"show_text","value":{"text":"Suit Up\nGet iron armour","color":"gold"}}}
execute as @e[scores={message=26}] run tellraw @a {"text":"Goal: [Not Today, Thank You]","color":"red","hover_event":{"action":"show_text","value":{"text":"Not Today, Thank You\nBlock a projectile with a shield","color":"gold"}}}
execute as @e[scores={message=27}] run tellraw @a {"text":"Goal: [Wax On]","color":"red","hover_event":{"action":"show_text","value":{"text":"Wax On\nApply honeycomb to a Copper Block","color":"gold"}}}
execute as @e[scores={message=28}] run tellraw @a {"text":"Goal: [Wax Off]","color":"red","hover_event":{"action":"show_text","value":{"text":"Wax Off\nTake off the honeycomb from a Copper Block","color":"gold"}}}

execute as @e[scores={message=29}] run tellraw @a {"text":"Goal: [Ol' Betsy]","color":"red","hover_event":{"action":"show_text","value":{"text":"Ol' Betsy\nShoot a crossbow","color":"gold"}}}
execute as @e[scores={message=30}] run tellraw @a {"text":"Goal: [Crafters Crafting Crafters]","color":"red","hover_event":{"action":"show_text","value":{"text":"Crafters Crafting Crafters\nBe near a Crafter that crafts a Crafter","color":"gold"}}}
execute as @e[scores={message=31}] run tellraw @a {"text":"Goal: [Tactical Fishing]","color":"red","hover_event":{"action":"show_text","value":{"text":"Tactical Fishing\nCatch a fish with a bucket","color":"gold"}}}
execute as @e[scores={message=32}] run tellraw @a {"text":"Goal: [We Need To Go Deeper]","color":"red","hover_event":{"action":"show_text","value":{"text":"We Need To Go Deeper\nEnter the nether","color":"gold"}}}
execute as @e[scores={message=33}] run tellraw @a {"text":"Goal: [Cover Me With Diamonds]","color":"red","hover_event":{"action":"show_text","value":{"text":"Cover Me With Diamonds\nGet diamond armor","color":"gold"}}}
execute as @e[scores={message=34}] run tellraw @a {"text":"Goal: [Respecting Remnants]","color":"red","hover_event":{"action":"show_text","value":{"text":"Respecting Remnants\nBrush a suspicious block to get a sherd","color":"gold"}}}
execute as @e[scores={message=35}] run tellraw @a {"text":"Goal: [Careful Restoration]","color":"red","hover_event":{"action":"show_text","value":{"text":"Careful Restoration\nMake a pot with 4 sherds","color":"gold"}}}
execute as @e[scores={message=36}] run tellraw @a {"text":"Goal: [Sneak 100]","color":"red","hover_event":{"action":"show_text","value":{"text":"Sneak 100\nShift near a skulk sensor","color":"gold"}}}
execute as @e[scores={message=37}] run tellraw @a {"text":"Goal: [What a Deal!]","color":"red","hover_event":{"action":"show_text","value":{"text":"What a Deal!\nTrade with a villager","color":"gold"}}}
execute as @e[scores={message=38}] run tellraw @a {"text":"Goal: [Ice Bucket Challenge]","color":"red","hover_event":{"action":"show_text","value":{"text":"Ice Bucket Challenge\nGet obsidian","color":"gold"}}}
execute as @e[scores={message=39}] run tellraw @a {"text":"Goal: [Light as a Rabbit]","color":"red","hover_event":{"action":"show_text","value":{"text":"Light as a Rabbit\nWalk (not sink) on powdered snow","color":"gold"}}}
execute as @e[scores={message=40}] run tellraw @a {"text":"Goal: [Isn't it Scute?]","color":"red","hover_event":{"action":"show_text","value":{"text":"Isn't it Scute?\nBrush an armadillo","color":"gold"}}}
execute as @e[scores={message=41}] run tellraw @a {"text":"Goal: [Whatever Floats Your Goat!]","color":"red","hover_event":{"action":"show_text","value":{"text":"Whatever Floats Your Goat!\nGet in a boat with a goat","color":"gold"}}}
execute as @e[scores={message=42}] run tellraw @a {"text":"Goal: [Country Lode, Take Me Home]","color":"red","hover_event":{"action":"show_text","value":{"text":"Country Lode, Take Me Home\nUse a compass on a lodestone","color":"gold"}}}

execute as @e[scores={message=43}] run tellraw @a {"text":"Goal: [Sniper Duel]","color":"red","hover_event":{"action":"show_text","value":{"text":"Sniper Duel\nKill a skeleton from 50 blocks (horizontal) away","color":"gold"}}}
execute as @e[scores={message=44}] run tellraw @a {"text":"Goal: [Is It A Bird?]","color":"red","hover_event":{"action":"show_text","value":{"text":"Is It A Bird?\nLook at a parrot through a spyglass","color":"gold"}}}
execute as @e[scores={message=45}] run tellraw @a {"text":"Goal: [Voluntary Exile]","color":"red","hover_event":{"action":"show_text","value":{"text":"Voluntary Exile\nKill a banner pillager","color":"gold"}}}
execute as @e[scores={message=46}] run tellraw @a {"text":"Goal: [Who's the Pillager Now?]","color":"red","hover_event":{"action":"show_text","value":{"text":"Who's the Pillager Now?\nKill a pillager with a crossbow","color":"gold"}}}
execute as @e[scores={message=47}] run tellraw @a {"text":"Goal: [Those Were the Days]","color":"red","hover_event":{"action":"show_text","value":{"text":"Those Were the Days\nEnter a Bastion Remnant","color":"gold"}}}
execute as @e[scores={message=48}] run tellraw @a {"text":"Goal: [A Terrible Fortress]","color":"red","hover_event":{"action":"show_text","value":{"text":"A Terrible Fortress\nEnter a Nether Fortress","color":"gold"}}}
execute as @e[scores={message=49}] run tellraw @a {"text":"Goal: [Oh Shiny]","color":"red","hover_event":{"action":"show_text","value":{"text":"Oh Shiny\nDistract a Piglin with gold","color":"gold"}}}
execute as @e[scores={message=50}] run tellraw @a {"text":"Goal: [Who is Cutting Onions?]","color":"red","hover_event":{"action":"show_text","value":{"text":"Who is Cutting Onions?\nGet crying obsidian","color":"gold"}}}

execute as @e run scoreboard players set @s ex 1