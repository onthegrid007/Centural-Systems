execute as @a[scores={teleport_home=..-1}] run function home_handler:negativevalue
execute as @a[scores={set_home=..-1}] run function home_handler:negativevalue
execute as @a[scores={delete_home=..-1}] run function home_handler:negativevalue

#triggers
execute as @a[scores={teleport_home=1}] run function home_handler:triggers/teleport_home
#So its an issue because of how this is called
execute as @p[tag=homeRun] positioned 0 2 0 at @e[nbt={Item:{tag:{home_state:0L}}},limit=1,distance=2..] run tp @s[tag=homeRun] ~ ~ ~
execute as @p[tag=homeRun] at @e[nbt={Item:{tag:{home_state:0L}}},limit=1] if entity @s[distance=..2] run tag @s remove homeRun


execute as @a[scores={set_home=1}] run function home_handler:triggers/set_home
execute as @a[scores={delete_home=1}] run function home_handler:triggers/delete_home

execute as @a[scores={teleport_home=2..}] run function home_handler:limit
execute as @a[scores={set_home=2..}] run function home_handler:limit
execute as @a[scores={delete_home=2..}] run function home_handler:limit

function home_handler:reset