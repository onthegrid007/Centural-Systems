# load_handler requires tellraw_handler

tag @a[tag=verbose] add tellraw_load_handler_loading

function scoreboard_handler:load/scoreboard_load_handler
function gamerule_handler:load/gamerule_load_handler
function team_handler:load/team_load_handler

function general:scoreboardinit
function general:gameruleinit
function general:teamsinit
scoreboard objectives setdisplay list teleport_id
scoreboard objectives setdisplay belowName health
execute unless score NewID teleport_id >= #Setup teleport_id run function general:setuptp
forceload add -1 0
forceload add 0 -1
forceload add -1 -1
forceload add 0 0
worldborder center 0 0
worldborder set 20000
worldborder warning distance 1
execute as @a[tag=TPEnabled] run function tp_handler:enables
execute as @a[scores={mod_level=1..}] run function mod_handler:enables
execute as @a run function orientation_handler:enables
execute as @a[scores={mod_level=1..}] run function gamemode_handler:enables
execute as @a run function orientation_handler:enables
function gamemode_handler:reset

# TODO have a load handler
function spawn_handler:load
function home_handler:load/load

tellraw @a ["",{"text":"[","bold":true,"color":"dark_blue"},{"text":"C","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"e","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"n","bold":true,"color":"dark_red","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"t","bold":true,"color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"u","bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"r","bold":true,"color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"a","bold":true,"color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"l","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"] ","bold":true,"color":"dark_blue"},{"text":"Finished Initilizing Centural Systems, Please Enjoy!","color":"dark_red"}]