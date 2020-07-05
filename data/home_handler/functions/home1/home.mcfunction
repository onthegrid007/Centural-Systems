tag @s add homeRun
execute in minecraft:overworld run setblock 0 2 0 minecraft:end_gateway{ExactTeleport:1}
execute as @s[tag=homeRun] run execute store result block 0 2 0 ExitPortal.X long 1 run scoreboard players get @s home1_x
execute as @s[tag=homeRun] run execute store result block 0 2 0 ExitPortal.Y long 1 run scoreboard players get @s home1_y
execute as @s[tag=homeRun] run execute store result block 0 2 0 ExitPortal.Z long 1 run scoreboard players get @s home1_z
summon item 0 2 0 {NoGravity:1b,Age:5960,PickupDelay:-1,Item:{id:"minecraft:paper",Count:1b,tag:{home_state:0L}}}
execute as @e[nbt={Item:{tag:{home_state:0L}}}] run say im the tp paper
execute as @a[tag=homeRun,limit=1] run say im the player
execute positioned 0 2 0 at @e[nbt={Item:{tag:{home_state:0L}}},limit=1,distance=2..] run tp @s[tag=homeRun] ~ ~ ~

tellraw @s ["",{"text":"[","bold":true,"color":"dark_blue"},{"text":"C","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"e","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"n","bold":true,"color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"t","bold":true,"color":"dark_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"u","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"r","bold":true,"color":"green","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"a","bold":true,"color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"l","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"] ","bold":true,"color":"dark_blue"},{"text":"Home!","color":"dark_red"}]
execute at @e[nbt={Item:{tag:{home_state:0L}}},limit=1] if entity @s[distance=..2] run tag @s remove homeRun

execute as @a run function home_handler:enables
#execute at @e[nbt={Item:{tag:{home_state:0L}}},limit=1] if entity @s[distance=..2] as @s run function home_handler:enables