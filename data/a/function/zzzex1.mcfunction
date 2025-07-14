execute as @e[tag=score,scores={ex=1,round=1,scoretick=0..1250}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"aqua"}
execute as @e[tag=score,scores={ex=1,round=1,scoretick=1251..2500}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"green"}
execute as @e[tag=score,scores={ex=1,round=1,scoretick=2501..3750}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"yellow"}
execute as @e[tag=score,scores={ex=1,round=1,scoretick=3751..5000}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"gold"}
execute as @e[tag=score,scores={ex=1,round=1,scoretick=5001..6250}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"red"}
execute as @e[tag=score,scores={ex=1,round=1,scoretick=6251..7500}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"dark_red"}
execute as @e[tag=score,scores={ex=1,round=1,scoretick=7501..8750}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"dark_gray"}
execute as @e[tag=score,scores={ex=1,round=1,scoretick=8751..10000}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"black"}

execute as @e[tag=score,scores={ex=1,round=1,scoretick=4000}] run tellraw @a {"text":"5 minutes left!","color":"green"}
execute as @e[tag=score,scores={ex=1,round=1,scoretick=6400}] run tellraw @a {"text":"3 minutes left!","color":"yellow"}
execute as @e[tag=score,scores={ex=1,round=1,scoretick=8800}] run tellraw @a {"text":"1 minute left!","color":"red"}
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9400}] run tellraw @a {"text":"30 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9700}] run tellraw @a {"text":"15 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9800}] run tellraw @a {"text":"10 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9820}] run tellraw @a {"text":"9 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9840}] run tellraw @a {"text":"8 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9860}] run tellraw @a {"text":"7 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9880}] run tellraw @a {"text":"6 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9900}] run tellraw @a {"text":"5 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9920}] run tellraw @a {"text":"4 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9940}] run tellraw @a {"text":"3 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9960}] run tellraw @a {"text":"2 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9980}] run tellraw @a {"text":"1 second left!","color":"dark_red"}
# sound time reminders
execute as @e[tag=score,scores={ex=1,round=1,scoretick=4000}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=1,round=1,scoretick=6400}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=1,round=1,scoretick=8800}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9400}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9700}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9800}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9820}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9840}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9860}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9880}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9900}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9920}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9940}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9960}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=1,round=1,scoretick=9980}] at @a run playsound minecraft:block.note_block.bit player @a