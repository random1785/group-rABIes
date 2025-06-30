# rABIes-datapack
Note: This datapack does not contain rabies and will not give you the disease. This datapack is specifically for `1.21.5`. It will not work on previous versions due to blocks and items specific to this update being part of the objective list.

## Features
Players will be placed in a random location in the world with seed `1785` and will be told to speedrun a certain Advancement, Block, or Item (hence the ABI in rABIes).<br>
Each objective is assigned a relative difficulty level (of course, it varies from spawn to spawn). Depending on this difficulty level, players will recieve fast start items to speed up the process. <br>
Players also have a maximum time limit of 10000 ticks, or 8 minutes and 20 seconds, to complete the objective. <br>
The datapack lasts 10 rounds. A semi-complicated scoring system and method of determining the objective is also at play. <br>
To remove the RNG aspect of trying to find specific structures or biomes, Chunkbase is allowed and strongly recommended. A macro that prints the x and z coordinates of the starting box is provided at the start of every round as well as multiple links to chunkbase (with the seed pre-typed). <br>
A spreadsheet further explaining everything is avaliable \<link to come\>. <br>
Players can redisplay the objective with `/trigger reminder` and can forefit the round with `/trigger zzzforefit`. 


## More technical stuff for myself
The datapack is (supposed to) consist of difficulty 1 to 4s in the ratio 2-3-3-2. Additionally, the ratio of advancements to blocks to items should be 3-4-3.<br>
Players who leave the starting box before the countdown ends end the round and are publicly shamed.<br>
Players who leave the game midway can join back at any time they wish.<br>
Players who join midway will be put in spectator for the current round and allowed to play in the second round with a severe score disadvantage.<br>
PvP is disabled and sabotaging other players is frowned upon but is impossible to enforce in the datapack itself.

## Known bugs and stuff to do
Sometimes, the datapack gives more difficulty x rounds than it should. This appears to happen randomly and unpredictably.<br>
The macro also sometimes unpredictably fails, for whatever reason.<br>
Golems are meant to be set to a health of 20 to avoid congestion and petty fighting in village spawns.<br>
Wandering Traders and Pillager Patrol spawns are meant to be turned off to remove rare RNG that can give certain players an advantage.<br>
Players currently can circumvent the scoring process by leaving the game as the scores are calculated.<br>
Make players that join get a starting score of `150*round`. <br>
Make forefitting only possible if the player runs the command twice within a second (or some other range) to prevent accidental forefits.
