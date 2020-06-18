tag @s add TPWarp
execute as @s[scores={TP=-2}] run function tphandler:warps/wild
execute as @s[scores={TP=-3}] run function tphandler:warps/spawn
execute as @s[tag=TPWarp] run say no one selected
tag @s remove TPWarp
execute as @a run function tphandler:enables
