tag @s add TPWarp
execute as @s[scores={TP=-2}] run function tphandler:warps/wild
execute as @s[scores={TP=-3}] run function tphandler:warps/spawn
tag @s remove TPWarp
scoreboard players enable @s TP