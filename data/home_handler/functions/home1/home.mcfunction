tag @s add homeRun
execute in minecraft:overworld run setblock 0 2 0 minecraft:end_gateway{ExactTeleport:1}
execute as @s[tag=homeRun] run execute store result block 0 2 0 ExitPortal.X long 1 run scoreboard players get @s home1_x
execute as @s[tag=homeRun] run execute store result block 0 2 0 ExitPortal.Y long 1 run scoreboard players get @s home1_y
execute as @s[tag=homeRun] run execute store result block 0 2 0 ExitPortal.Z long 1 run scoreboard players get @s home1_z
#summon minecraft:ender_pearl 0 2 0 {Motion:[0d, 0d, 0d]}
summon item 0 2 0 {Tags:["home_scroll"],NoGravity:1b,Age:5960,PickupDelay:-1,Item:{id:"minecraft:paper",Count:1b,tag:{home_state:0L}}}
#execute as @e[type=minecraft:item,nbt={Item:{tag:{home_state:0L}}}] run forceload add ~ ~
#attribute @e[type=minecraft:armor_stand,x=0,y=0,limit=1] minecraft:generic.max_health base set 1
#execute as @e[type=minecraft:ender_pearl,limit=1,x=0,z=0] run data modify entity @s Owner set from entity @a[tag=homeRun,limit=1] UUID
#execute as @e[type=minecraft:ender_pearl,limit=1,x=0,z=0] run data modify entity @s Motion set value [0d, -2d, 0d]
#execute in minecraft:overworld run setblock 0 2 0 air
execute as @e[nbt={Item:{tag:{home_state:0L}}}] run say im the tp paper
execute as @a[tag=homeRun,limit=1] run say im the player
#execute positioned 0 2 0 as @e[nbt={Item:{tag:{home_state:0L}}},limit=1] run tp @a[tag=homeRun,limit=1] @s
execute positioned 0 2 0 as @e[tag=home_scroll,limit=1,distance=2..] run tp @p[tag=homeRun,limit=1] @s

tellraw @s ["",{"text":"[","bold":true,"color":"dark_blue"},{"text":"C","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"e","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"n","bold":true,"color":"dark_red","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"t","bold":true,"color":"dark_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"u","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"r","bold":true,"color":"green","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"a","bold":true,"color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"l","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"] ","bold":true,"color":"dark_blue"},{"text":"Home!","color":"dark_red"}]
execute positioned 0 2 0 unless entity @e[tag=home_scroll,limit=1,distance=..2] run tag @s remove homeRun

execute as @a run function home_handler:enables