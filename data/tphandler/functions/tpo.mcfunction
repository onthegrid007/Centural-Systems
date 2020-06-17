tag @s add TPORun
execute as @a run scoreboard players operation @s teleport_math = @s teleport_id
execute as @a run scoreboard players operation @s teleport_math -= @a[tag=TPORun,limit=1] TPO
execute as @a[scores={teleport_math=0},limit=1] run say teleporting to @s
execute as @a[scores={teleport_math=0},limit=1] run tp @a[tag=TPORun,limit=1] @s
tag @s remove TPORun

execute as @a run function tphandler:enables
