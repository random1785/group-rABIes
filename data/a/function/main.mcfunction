team modify a friendlyFire false
team modify a collisionRule pushOwnTeam
tag @a remove bugs
tag @a remove final
scoreboard players reset *
scoreboard players set @a done 0
tp @a 0 301 0
gamerule doImmediateRespawn true
gamerule announceAdvancements true
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule spawnRadius 2
gamerule keepInventory false
difficulty easy
time set 0
team add a
scoreboard objectives add scoretick dummy
scoreboard objectives add first dummy
scoreboard objectives add lobby dummy
scoreboard objectives add score dummy
scoreboard objectives add temp dummy
scoreboard objectives add damage dummy
scoreboard objectives add message dummy
scoreboard objectives add overkill dummy
scoreboard objectives add done trigger
scoreboard objectives add reminder trigger
scoreboard objectives add zzzforefit trigger
scoreboard objectives add zzzdocument trigger
scoreboard objectives add tp trigger
scoreboard objectives add team dummy
scoreboard objectives add t1 trigger
scoreboard objectives add t2 trigger
scoreboard objectives add t3 trigger
scoreboard objectives add t4 trigger
scoreboard objectives add t5 trigger
scoreboard objectives add t6 trigger
scoreboard objectives add t7 trigger
scoreboard objectives add s7 dummy
scoreboard objectives add s6 dummy
scoreboard objectives add s5 dummy
scoreboard objectives add s4 dummy
scoreboard objectives add s3 dummy
scoreboard objectives add s2 dummy
scoreboard objectives add s1 dummy
scoreboard objectives add round dummy
scoreboard objectives add calc dummy
scoreboard objectives add multi dummy
scoreboard objectives add rate dummy
scoreboard objectives add ex dummy
scoreboard objectives add left dummy
scoreboard objectives add right dummy
scoreboard objectives add gone dummy
scoreboard objectives add two dummy
scoreboard objectives add pcount dummy
scoreboard objectives add tpcount dummy
scoreboard objectives add x dummy
scoreboard objectives add z dummy
scoreboard objectives add d1 dummy
scoreboard objectives add d2 dummy
scoreboard objectives add d3 dummy
scoreboard objectives add d4 dummy
scoreboard objectives add d dummy
scoreboard objectives add t dummy
scoreboard objectives add ta dummy
scoreboard objectives add ti dummy
scoreboard objectives add tb dummy
scoreboard objectives add place dummy
scoreboard objectives add rounds dummy
scoreboard objectives add twok dummy
scoreboard objectives add newscore dummy
scoreboard objectives add onefifty dummy
scoreboard objectives add glass minecraft.mined:minecraft.glass
scoreboard players set @a death 1785
scoreboard players set @a lobby 1785
scoreboard players set @a team 0
scoreboard objectives setdisplay list team
scoreboard objectives setdisplay sidebar score
tellraw @a {"text":"rABIes (Racing for ADVANCEMENTS, BLOCKS, and ITEMS Extremely Speedily) has been loaded! Use /function a:start to begin the acquisition of rabies :3","color":"green"}
tellraw @a {"text":" [direct link to chunkbase]","color":"aqua","click_event":{"action":"open_url","url":"https://www.chunkbase.com/apps/seed-map#seed=1785"}}


# create spawn platform
schedule function a:zzzspawn 5t
execute in the_nether run forceload add -13 -14 25 24
place template a:lobbyoverworld1 -12 295 -14
setworldspawn 0 302 0
spawnpoint @a 0 302 0
forceload add -1 -1 0 0

# text stuffz
kill @e[type=text_display]
summon text_display -9.0 302 0.5 {line_width:600,Rotation:[270F,0F],text:[{"bold":true,"text":"Group rABIes Instructions:\n","underlined":true},{"bold":false,"text":"You will be put in a random place in the Minecraft world with seed 1785, and a random advancement/block/item will be sent in chat. (The objectives are handpicked to be ","underlined":false},{"bold":false,"italic":true,"text":"mostly ","underlined":false},{"bold":false,"text":"possible in the time limit e.g. Free the End is not one of them)\n\nA timer slowly counts up above your hotbar. Your goal is to achieve the objective as fast as possible and within the time limit, which is 10000 ticks (8 1/3 minutes).\n\nYour score is the time it takes you to achieve the objective (in ticks) plus a multiplier that is determined by how fast the first player finishes the round.\nAdditionally, the first, second, and third place finishers receive a point boost of -2000, -1000, and -500, respectively.\n\nWhen everyone has finished and/or forefitted or when the time limit is up, the scores will be calculated. Like golf, a high score is ","underlined":false},"bad",{"bold":false,"text":".\n\n10 rounds will be played, each with a different random advancement/block/item of varying difficulty. At the end of the 10th round, a winner will be crowned!","underlined":false}]}
summon text_display 0.5 302 -9.5 {line_width:600,text:[{"bold":true,"text":"Team-specific Instructions:\n","underlined":true},{"bold":false,"text":"For the Wifiesland event, everyone will be on a team against Random1785.\n\nYour team's score is the first person on your team to complete the objective - however, if multiple people on your team complete the objective, you can rob Random1785 of placement points.\n\nIt may be useful for a teammate to forefit and use their spectator mode to find things for the team.\n\nYou can teleport to your teammates with ","underlined":false},"/trigger tp",{"bold":false,"text":". Keep in mind that this teleports you to a random teammate and may require multiple uses to find the right person!\n\n","underlined":false},{"text":"Your team may not tail, sabotage, or try and get in the way of the players on the other teams. Any behaviour deemed to be sabotage will have consequences left to the discretion of the operators.","underlined":false}]}
summon text_display 0.5 302 10.0 {line_width:600,Rotation:[180F,0F],text:[{"bold":true,"text":"Rules:\n","underlined":true},{"bold":false,"text":"No hacked clients are allowed, along with any mod that gathers information about the seed, such as minimap mods, mapping mods, entity trackers.\n\nHowever, you are allowed to use gamma utils or fullbright to increase your vision during nighttime/in caves provided that you do not toggle between multiple gamma values.\n\nFinally, you are ","underlined":false},{"text":"allowed and ","underlined":false},"strongly encouraged",{"bold":false,"text":" to utilize Chunkbase for this game. Please refer to the guide under ","underlined":false},"/trigger zzzdocument",{"bold":false,"text":" on how to use it effectively!\n\nYou also may consult the https://minecraft.wiki for anything that you do not know how to craft/find/use.\n\nPvP is turned off, but you are ","underlined":false},"not",{"bold":false,"text":" allowed to sabotage the other players (stealing their furnaces, breaking their boats, pouring lava or lighting them on fire). This will be moderated by Random1785 or other operators, and penalties are up to the discretion of the referees.\n\n","underlined":false},{"text":"Trigger list:\n"},{"text":"/trigger reminder:","underlined":false},{"bold":false,"text":" Reminds you of the objective\n","underlined":false},{"text":"/trigger tp:","underlined":false},{"bold":false,"text":" Teleports you to a random teammate","underlined":false},{"text":"\n/trigger zzzdocument:","underlined":false},{"bold":false,"text":" Sends you a link to the information document!\n","underlined":false},{"text":"/trigger zzzforefit: ","underlined":false},{"bold":false,"text":"Instantly ","underlined":false},"eliminates you",{"bold":false,"text":" from the round and ","underlined":false},"cannot",{"bold":false,"text":" be undone!\n","underlined":false},{"text":"/trigger t_:","underlined":false},{"bold":false,"text":" Lets you join Team _!","underlined":false}]}

# spawn armour stand
execute unless entity @e[type=minecraft:armor_stand,limit=1,tag=score] run summon minecraft:armor_stand 0 330 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["score"]}
scoreboard players set @e[type=armor_stand,tag=score] round 0

# stop all functions
schedule clear a:zzzstart
schedule clear a:zzzstart1
schedule clear a:zzzstart2
schedule clear a:zzzscorecalc1
schedule clear a:zzzscorecalc2
schedule clear a:zzzscorecalc3
schedule clear a:zzzquartersec

function a:zzzquartersec