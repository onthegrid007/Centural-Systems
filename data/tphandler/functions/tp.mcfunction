tag @s add TPRun
function tphandler:summon
execute as @e[nbt={Item:{tag:{tpState:1L}}}] run function tphandler:deleteexisting
execute as @e[nbt={Item:{tag:{tpState:0L}}}] store result entity @s Item.tag.requesterID long 1 run scoreboard players get @e[tag=TPRun,limit=1] teleport_id
execute as @e[nbt={Item:{tag:{tpState:0L}}}] store result entity @s Item.tag.receiverID long 1 run scoreboard players get @e[tag=TPRun,limit=1] TP
execute as @e[nbt={Item:{tag:{receiverID:-1L}}}] run kill @s
function tphandler:tpcalc
execute as @e[scores={teleport_math=0},limit=1] run function tphandler:sendrequest
execute unless entity @e[scores={teleport_math=0},limit=1] as @e[nbt={Item:{tag:{tpState:0L}}},limit=1] run function tphandler:playerdoesnotexist
data modify entity @e[nbt={Item:{tag:{tpState:0L}}},limit=1] Item.tag.tpState set value 1L
tag @s remove TPRun
execute as @a run function tphandler:enables
