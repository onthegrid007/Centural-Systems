tag @s add homeRun
execute in minecraft:overworld run setblock 0 2 0 minecraft:end_portal
execute in minecraft:the_end run setblock 100 45 0 minecraft:end_portal
execute in minecraft:overworld run tp @s 0 3 0
execute in minecraft:the_end run tp @s 100 45 0
execute in minecraft:overworld run setblock 0 2 0 air
#execute in minecraft:the_end run setblock 100 45 0 air
tellraw @s ["",{"text":"[","bold":true,"color":"dark_blue"},{"text":"C","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"e","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"n","bold":true,"color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"t","bold":true,"color":"dark_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"u","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"r","bold":true,"color":"green","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"a","bold":true,"color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"l","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"] ","bold":true,"color":"dark_blue"},{"text":"Home!","color":"dark_red"}]
tag @s remove homeRun

execute as @a run function home_handler:enables