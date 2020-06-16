execute as @e[scores={TP=..-1}] run scoreboard players set @s TP 0
execute as @e[scores={TP=1..}] run scoreboard players set @s TP 0

execute as @e[scores={TPReply=..-1}] run scoreboard players set @s TPReply 0
execute as @e[scores={TPReply=1..}] run scoreboard players set @s TPReply 0

scoreboard players reset * teleport_math