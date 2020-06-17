tag @s add TPOHERERun
execute as @a run scoreboard players operation @s teleport_math = @s teleport_id
execute as @a run scoreboard players operation @s teleport_math -= @a[tag=TPOHERERun,limit=1] TPOHERE
execute as @a[scores={teleport_math=0},limit=1] run say teleporting @s you
execute as @a[scores={teleport_math=0},limit=1] run tp @s @a[tag=TPOHERERun,limit=1]
execute unless entity @a[scores={teleport_math=0},limit=1] run say no one to tpohere
tag @s remove TPOHERERun

execute as @a run function tphandler:enables