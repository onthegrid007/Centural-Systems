execute as @e[scores={HOME=..-1}] run scoreboard players set @s HOME 0
execute as @e[scores={HOME=1..}] run scoreboard players set @s HOME 0

execute as @e[scores={SETHOME=..-1}] run scoreboard players set @s SETHOME 0
execute as @e[scores={SETHOME=1..}] run scoreboard players set @s SETHOME 0

execute as @e[scores={delete_home=..-1}] run scoreboard players set @s delete_home 0
execute as @e[scores={delete_home=1..}] run scoreboard players set @s delete_home 0