execute as @e[scores={HOME=..-1}] run scoreboard players set @s HOME 0
execute as @e[scores={HOME=1..}] run scoreboard players set @s HOME 0

execute as @e[scores={SETHOME=..-1}] run scoreboard players set @s SETHOME 0
execute as @e[scores={SETHOME=1..}] run scoreboard players set @s SETHOME 0

execute as @e[scores={DELHOME=..-1}] run scoreboard players set @s DELHOME 0
execute as @e[scores={DELHOME=1..}] run scoreboard players set @s DELHOME 0