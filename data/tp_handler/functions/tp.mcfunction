tag @s add TPRun
function tp_handler:summon
execute as @e[nbt={Item:{tag:{tpState:1L}}}] run function tp_handler:deleteexisting
execute as @e[nbt={Item:{tag:{tpState:0L}}}] store result entity @s Item.tag.requesterID long 1 run scoreboard players get @e[tag=TPRun,limit=1] teleport_id
execute as @e[nbt={Item:{tag:{tpState:0L}}}] store result entity @s Item.tag.receiverID long 1 run scoreboard players get @e[tag=TPRun,limit=1] TP
execute as @e[nbt={Item:{tag:{receiverID:-1L}}}] run kill @s
function tp_handler:tpcalc
execute as @e[scores={one_time_math=0},limit=1] run function tp_handler:sendrequest
execute unless entity @e[scores={one_time_math=0},limit=1] as @e[nbt={Item:{tag:{tpState:0L}}},limit=1] run function tp_handler:playerdoesnotexist
data modify entity @e[nbt={Item:{tag:{tpState:0L}}},limit=1] Item.tag.tpState set value 1L
tag @s remove TPRun
execute as @a run function tp_handler:enables
