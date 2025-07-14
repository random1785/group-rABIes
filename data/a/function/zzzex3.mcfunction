# multi 3
execute as @e[tag=score,scores={ex=3,round=1,scoretick=0..500}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"aqua"}
execute as @e[tag=score,scores={ex=3,round=1,scoretick=501..1000}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"green"}
execute as @e[tag=score,scores={ex=3,round=1,scoretick=1001..1500}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"yellow"}
execute as @e[tag=score,scores={ex=3,round=1,scoretick=1501..2000}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"gold"}
execute as @e[tag=score,scores={ex=3,round=1,scoretick=2001..2500}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"red"}
execute as @e[tag=score,scores={ex=3,round=1,scoretick=2501..3000}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"dark_red"}
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3001..3500}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"dark_gray"}
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3501..4000}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"black"}


execute as @e[tag=score,scores={ex=3,round=1,scoretick=2800}] run tellraw @a {"text":"1 minute left!","color":"red"}
execute as @e[tag=score,scores={ex=3,round=1,scoretick=2800}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3400}] run tellraw @a {"text":"30 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3400}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3700}] run tellraw @a {"text":"15 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3700}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3800}] run tellraw @a {"text":"10 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3800}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3820}] run tellraw @a {"text":"9 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3820}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3840}] run tellraw @a {"text":"8 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3840}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3860}] run tellraw @a {"text":"7 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3860}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3880}] run tellraw @a {"text":"6 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3880}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3900}] run tellraw @a {"text":"5 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3900}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3920}] run tellraw @a {"text":"4 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3920}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3940}] run tellraw @a {"text":"3 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3940}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3960}] run tellraw @a {"text":"2 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3960}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3980}] run tellraw @a {"text":"1 second left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=3,round=1,scoretick=3980}] at @a run playsound minecraft:block.note_block.bit player @a
