#execute as @a unless entity @s[scores={set_home=-2147483648..2147483647},tag=!home_trigger_enabled] run tag @s add home_trigger_cooldown

execute if entity @p[tag=!home_trigger_enabled] as @a[tag=!home_trigger_enabled] run scoreboard players enable @s set_home
execute if entity @p[tag=!home_trigger_enabled] as @a[tag=!home_trigger_enabled] run tag @s add home_trigger_enabled

# Start Set Home Trigger
execute if entity @p[scores={set_home=1..}] as @p[scores={set_home=1}] store result score @s home_x run data get entity @s Pos[0] 1
execute if entity @p[scores={set_home=1..}] as @p[scores={set_home=1}] store result score @s home_y run data get entity @s Pos[1] 1
execute if entity @p[scores={set_home=1..}] as @p[scores={set_home=1}] store result score @s home_z run data get entity @s Pos[2] 1
execute if entity @p[scores={set_home=1..}] as @p[scores={set_home=1}] run tellraw @a {"text":"Home has been set!"}
execute if entity @p[scores={set_home=1..}] as @p[scores={set_home=1}] run tag @s remove home_trigger_enabled
execute if entity @p[scores={set_home=1..}] as @p[scores={set_home=1}] run scoreboard players reset @s set_home
# End Set Home Trigger


execute if entity @p[tag=!teleport_home_trigger_enabled] as @a[tag=!teleport_home_trigger_enabled] run scoreboard players enable @s teleport_home
execute if entity @p[tag=!teleport_home_trigger_enabled] as @a[tag=!teleport_home_trigger_enabled] run tag @s add teleport_home_trigger_enabled

# Start Teleport Home Trigger
execute if entity @p[scores={teleport_home=1..}] as @p[scores={teleport_home=1..}] run tellraw @a[tag=verbose] {"text":"setblock end_gateway"}
execute if entity @p[scores={teleport_home=1..}] as @p[scores={teleport_home=1..}] run setblock 0 10 0 end_gateway
execute if entity @p[scores={teleport_home=1..}] as @p[scores={teleport_home=1..}] positioned 0 10 0 store result block ~ ~ ~ ExitPortal.X double 1 run scoreboard players get @s home_x
execute if entity @p[scores={teleport_home=1..}] as @p[scores={teleport_home=1..}] positioned 0 10 0 store result block ~ ~ ~ ExitPortal.Y double 1 run scoreboard players get @s home_y
execute if entity @p[scores={teleport_home=1..}] as @p[scores={teleport_home=1..}] positioned 0 10 0 store result block ~ ~ ~ ExitPortal.Z double 1 run scoreboard players get @s home_z
execute if entity @p[scores={teleport_home=1..}] as @p[scores={teleport_home=1..}] positioned 0 10 0 run summon item ~ ~ ~ {Tags:["teleport_home"],teleport_home:1b}
execute if entity @p[scores={teleport_home=1..}] as @p[scores={teleport_home=1..}] positioned 0 10 0 run tp @s @e[tag=teleport_home,type=item,limit=1,distance=2..]
execute if entity @p[scores={teleport_home=1..}] as @p[scores={teleport_home=1..}] positioned 0 10 0 if entity @e[tag=teleport_home,type=item,distance=2..] run kill @e[tag=teleport_home,type=item,distance=2..]
execute if entity @p[scores={teleport_home=1..}] as @p[scores={teleport_home=1..}] positioned 0 10 0 unless entity @e[tag=teleport_home,type=item] run setblock ~ ~ ~ air
execute if entity @p[scores={teleport_home=1..}] as @p[scores={teleport_home=1..}] positioned 0 10 0 unless entity @e[tag=teleport_home,type=item] run tag @s remove teleport_home_trigger_enabled
execute if entity @p[scores={teleport_home=1..}] as @p[scores={teleport_home=1..}] positioned 0 10 0 unless entity @e[tag=teleport_home,type=item] run scoreboard players reset @s teleport_home


# End Teleport Home Trigger
