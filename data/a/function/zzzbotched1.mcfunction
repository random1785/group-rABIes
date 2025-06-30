execute as @a[tag=botch] run tellraw @a [{"selector":"@s","color":"red","bold":true},{"bold":false,"text":" was not in the starting box!"}]
execute as @a[tag=botch] run title @a title [{"selector":"@s","color":"red","bold":true},{"bold":false,"text":" sucks."}]
tellraw @a {"color":"dark_red","bold":false,"text":"Restarting round..."}
tag @a remove botch