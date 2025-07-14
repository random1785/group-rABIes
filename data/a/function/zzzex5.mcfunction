# multi 5
execute as @e[tag=score,scores={ex=5,round=1,scoretick=0..250}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"aqua"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=251..500}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"green"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=501..750}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"yellow"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=751..1000}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"gold"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1001..1250}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1251..1500}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1501..1750}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"dark_gray"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1751..2000}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"black"}


execute as @e[tag=score,scores={ex=5,round=1,scoretick=800}] run tellraw @a {"text":"1 minute left!","color":"red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=800}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1400}] run tellraw @a {"text":"30 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1400}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1700}] run tellraw @a {"text":"15 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1700}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1800}] run tellraw @a {"text":"10 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1800}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1820}] run tellraw @a {"text":"9 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1820}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1840}] run tellraw @a {"text":"8 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1840}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1860}] run tellraw @a {"text":"7 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1860}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1880}] run tellraw @a {"text":"6 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1880}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1900}] run tellraw @a {"text":"5 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1900}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1920}] run tellraw @a {"text":"4 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1920}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1940}] run tellraw @a {"text":"3 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1940}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1960}] run tellraw @a {"text":"2 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1960}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1980}] run tellraw @a {"text":"1 second left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1980}] at @a run playsound minecraft:block.note_block.bit player @a