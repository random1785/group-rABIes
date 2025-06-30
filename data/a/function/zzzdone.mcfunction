advancement revoke @a everything
gamerule announceAdvancements false
scoreboard players reset * temp
function a:zzzz
scoreboard players set @e[type=armor_stand,tag=score,scores={round=1}] round 0
scoreboard players set @a done 0