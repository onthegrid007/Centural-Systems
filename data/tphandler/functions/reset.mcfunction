execute as @e[scores={TP=..-1}] run scoreboard players set @s TP 0
execute as @e[scores={TP=1..}] run scoreboard players set @s TP 0

execute as @e[scores={TP_Response=..-1}] run scoreboard players set @s TP_Response 0
execute as @e[scores={TP_Response=1..}] run scoreboard players set @s TP_Response 0

scoreboard players reset * TP_Calc