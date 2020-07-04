execute as @a unless entity @s[scores={home_state=..2147483648}] run tag @s add home_trigger_cooldown
execute if @p[tag=home_trigger_cooldown] as @a[tag=home_trigger_cooldown] unless entity @s[scores={home_state=0}] run scoreboard players set @s home_state 0
execute if @p[tag=home_trigger_cooldown,scores={home_state=0,home_cooldown=100}] as @a[tag=home_trigger_cooldown,scores={home_state=0,home_cooldown=100}] run tag @s add home_trigger_enabled
execute if @p[tag=home_trigger_cooldown,scores={home_state=0,home_cooldown=100}] as @a[tag=home_trigger_cooldown,scores={home_state=0,home_cooldown=100}] run tag @s remove home_trigger_cooldown
execute if @p[tag=home_trigger_enabled] as @a[tag=home_trigger_enabled] unless entity @s[scores={home_state=0}] run scoreboard players enabled @s set_home
execute if @p[tag=home_trigger_enabled] as @a[tag=home_trigger_enabled] unless entity @s[scores={home_state=0}] run scoreboard players enabled @s get_home
execute if @p[tag=home_trigger_enabled] as @a[tag=home_trigger_enabled] unless entity @s[scores={home_state=0}] run scoreboard players enabled @s teleport_home
execute if @p[tag=home_trigger_enabled] as @a[tag=home_trigger_enabled] unless entity @s[scores={home_state=0}] run scoreboard players set @s home_state 1

