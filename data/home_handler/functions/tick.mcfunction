execute as @a unless entity @s[scores={home_state=-2147483648..2147483647}] run tag @s add home_trigger_cooldown
execute if entity @p[tag=home_trigger_cooldown] as @a[tag=home_trigger_cooldown] unless entity @s[scores={home_state=0}] run scoreboard players set @s home_state 0
execute if entity @p[tag=home_trigger_cooldown,scores={home_state=0,home_cooldown=100..}] as @a[tag=home_trigger_cooldown,scores={home_state=0,home_cooldown=100..}] run tag @s add home_trigger_enabled
execute if entity @p[tag=home_trigger_cooldown,tag=home_trigger_enabled,scores={home_state=0,home_cooldown=100..}] as @a[tag=home_trigger_cooldown,tag=home_trigger_enabled,scores={home_state=0,home_cooldown=100..}] run tag @s remove home_trigger_cooldown
execute if entity @p[tag=home_trigger_enabled] as @a[tag=home_trigger_enabled] unless entity @s[scores={home_state=0}] run scoreboard players enable @s set_home
execute if entity @p[tag=home_trigger_enabled] as @a[tag=home_trigger_enabled] unless entity @s[scores={home_state=0}] run scoreboard players enable @s get_home
execute if entity @p[tag=home_trigger_enabled] as @a[tag=home_trigger_enabled] unless entity @s[scores={home_state=0}] run scoreboard players enable @s teleport_home
execute if entity @p[tag=home_trigger_enabled] as @a[tag=home_trigger_enabled] unless entity @s[scores={home_state=0}] run scoreboard players set @s home_state 1



execute if entity @p[scores={home_cooldown=100..}] as @a[scores={home_cooldown=100..}] run scoreboard players set @s home_cooldown 0

