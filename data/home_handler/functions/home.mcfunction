execute in minecraft:overworld run setblock 0 3 0 minecraft:end_portal
#execute in minecraft:the_end run setblock 100 45 0 minecraft:end_portal
execute in minecraft:overworld run tp @s 0 3 0
execute in minecraft:the_end run tp @s 100 45 0
execute in minecraft:overworld run setblock 0 3 0 air
#execute in minecraft:the_end run setblock 100 45 0 air
say go home
execute as @a run function home_handler:enables