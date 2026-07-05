# multi 5
execute as @e[tag=score,scores={ex=5,round=1,scoretick=0..375}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"aqua"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=376..750}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"green"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=751..1125}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"yellow"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1126..1500}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"gold"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1501..1875}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1876..2250}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2251..2625}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"dark_gray"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2626..3000}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"black"}

execute as @e[tag=score,scores={ex=5,round=1,scoretick=0..375}] run title @a[tag=spec] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"aqua"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=376..750}] run title @a[tag=spec] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"green"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=751..1125}] run title @a[tag=spec] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"yellow"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1126..1500}] run title @a[tag=spec] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"gold"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1501..1875}] run title @a[tag=spec] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1876..2250}] run title @a[tag=spec] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2251..2625}] run title @a[tag=spec] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"dark_gray"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2626..3000}] run title @a[tag=spec] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"black"}

execute as @e[tag=score,scores={ex=5,round=1,scoretick=0..375}] run title @a[tag=pspec] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"aqua"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=376..750}] run title @a[tag=pspec] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"green"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=751..1125}] run title @a[tag=pspec] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"yellow"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1126..1500}] run title @a[tag=pspec] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"gold"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1501..1875}] run title @a[tag=pspec] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1876..2250}] run title @a[tag=pspec] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2251..2625}] run title @a[tag=pspec] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"dark_gray"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2626..3000}] run title @a[tag=pspec] actionbar {"score":{"name":"@s","objective":"scoretick"},"color":"black"}


execute as @e[tag=score,scores={ex=5,round=1,scoretick=1800}] run tellraw @a {"text":"1 minute left!","color":"red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=1800}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2400}] run tellraw @a {"text":"30 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2400}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2700}] run tellraw @a {"text":"15 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2700}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2800}] run tellraw @a {"text":"10 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2800}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2820}] run tellraw @a {"text":"9 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2820}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2840}] run tellraw @a {"text":"8 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2840}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2860}] run tellraw @a {"text":"7 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2860}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2880}] run tellraw @a {"text":"6 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2880}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2900}] run tellraw @a {"text":"5 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2900}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2920}] run tellraw @a {"text":"4 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2920}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2940}] run tellraw @a {"text":"3 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2940}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2960}] run tellraw @a {"text":"2 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2960}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2980}] run tellraw @a {"text":"1 second left!","color":"dark_red"}
execute as @e[tag=score,scores={ex=5,round=1,scoretick=2980}] at @a run playsound minecraft:block.note_block.bit player @a