# start temporary scoreboard
scoreboard objectives remove count
scoreboard objectives add count dummy "Count Spawn Handlers"

# requires spawn_handler
execute unless entity @e[tag=spawn_handler] run  tellraw @a[tag=verbose] [{"text":"[ERROR]: ","color":"dark_red"},{"text":"spawn_handler missing, summoning now","color":"red"}]
execute unless entity @e[tag=spawn_handler] run summon armor_stand 0 0 0 {NoGravity:1b,Marker:1b,Tags:["handler","spawn_handler"],Invisible:1b,InvulnerableL1b}
# TODO add tag reset to delete if spawn handler exists but has reset tag attached

# catch if handler tag is missing from spawn_handler
execute if entity @e[tag=spawn_handler,tag=!handler] run tellraw @a[tag=verbose] [{"text":"[ERROR]: ","color":"dark_red"},{"text":"spawn_handler missing handler tag, adding tag now","color":"red"}]
execute if entity @e[tag=spawn_handler,tag=!handler] run tag @e[tag=spawn,tag=!handler] add handler

# count spawn_handler(s)
execute if entity @e[tag=spawn_handler] as @e[tag=spawn_handler] run scoreboard players add @s count 1

# catch invalid count
execute if entity @e[tag=spawn_handler,scores={count=..0}] run tellraw @a[tag=verbose] [{"text":"[ERROR]: ","color":"dark_red"},{"text":"spawn_handler count is zero or below","color":"red"}]
# TODO determine how to handle invalid count

# determine if spawn_handler(s) count exceeds one
execute if entity @e[tag=spawn_handler,scores={count=2..}] run tellraw @a[tag=verbose] [{"text":"[ERROR]: ","color":"dark_red"},{"text":"spawn_handler count is two or above (should only be one)","color":"red"}]
execute if entity @e[tag=spawn_handler,scores={count=2..}] run tellraw @a[tag=verbose] [{"text":"[ERROR]: ","color":"dark_red"},{"text":"spawn_handler count is two or above (should only be one)","color":"red"},{"selector":"@s","score":"count"}]

# TODO user end gateway to teleport spawn to scoreboard x y z
# Notes: This file is incomplete but pushing as it is not refferenced in main init call yet
