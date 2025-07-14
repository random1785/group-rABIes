# multi 2
execute as @e[tag=score,scores={ex=2,round=1,scoretick=0..875}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"aqua"}
execute as @e[tag=score,scores={ex=2,round=1,scoretick=876..1750}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"green"}
execute as @e[tag=score,scores={ex=2,round=1,scoretick=1751..2625}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"yellow"}
execute as @e[tag=score,scores={ex=2,round=1,scoretick=2626..3500}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"gold"}
execute as @e[tag=score,scores={ex=2,round=1,scoretick=3501..4375}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"red"}
execute as @e[tag=score,scores={ex=2,round=1,scoretick=4376..5250}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"dark_red"}
execute as @e[tag=score,scores={ex=2,round=1,scoretick=5251..6125}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"dark_gray"}
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6126..7000}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"black"}


execute as @e[tag=score,scores={ex=2,round=1,scoretick=3400}] run tellraw @a {"text":"3 minutes left!","color":"yellow"}
execute as @e[tag=score,scores={ex=2,round=1,scoretick=3400}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=2,round=1,scoretick=5800}] run tellraw @a {"text":"1 minute left!","color":"red"}
execute as @e[tag=score,scores={ex=2,round=1,scoretick=5800}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6400}] run tellraw @a {"text":"30 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6400}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6700}] run tellraw @a {"text":"15 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6700}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6800}] run tellraw @a {"text":"10 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6800}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6820}] run tellraw @a {"text":"9 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6820}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6840}] run tellraw @a {"text":"8 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6840}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6860}] run tellraw @a {"text":"7 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6860}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6880}] run tellraw @a {"text":"6 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6880}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6900}] run tellraw @a {"text":"5 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6900}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6920}] run tellraw @a {"text":"4 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6920}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6940}] run tellraw @a {"text":"3 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6940}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6960}] run tellraw @a {"text":"2 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6960}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6980}] run tellraw @a {"text":"1 second left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=2,round=1,scoretick=6980}] at @a run playsound minecraft:block.note_block.bit player @a