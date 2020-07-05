tag @s add homeRun
execute in minecraft:overworld run setblock 0 2 0 minecraft:end_gateway{ExactTeleport:1}
execute as @s[tag=homeRun] run execute store result block 0 2 0 ExitPortal.X long 1 run scoreboard players get @s home1_x
execute as @s[tag=homeRun] run execute store result block 0 2 0 ExitPortal.Y long 1 run scoreboard players get @s home1_y
execute as @s[tag=homeRun] run execute store result block 0 2 0 ExitPortal.Z long 1 run scoreboard players get @s home1_z
summon minecraft:ender_pearl 0 5 0 {Motion:[0d, 0d, 0d]}
execute as @e[type=minecraft:ender_pearl,limit=1,x=0,z=0] run data modify entity @s Owner set from entity @a[tag=homeRun,limit=1] UUID
execute as @e[type=minecraft:ender_pearl,limit=1,x=0,z=0] run data modify entity @s Motion set value [0d, -2d, 0d]


tellraw @s ["",{"text":"[","bold":true,"color":"dark_blue"},{"text":"C","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"e","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"n","bold":true,"color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"t","bold":true,"color":"dark_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"u","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"r","bold":true,"color":"green","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"a","bold":true,"color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"l","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"] ","bold":true,"color":"dark_blue"},{"text":"Home!","color":"dark_red"}]
tag @s remove homeRun

execute as @a run function home_handler:enables