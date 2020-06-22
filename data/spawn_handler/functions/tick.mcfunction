# Note: Perhaps we should change @p to @a; but again when calling functions from seperate files with @s defined already also

# Re-enabled spawn teleport
# Note: I have this hardcoded here, perhaps operation to dynamically assign cooldown base on other plugin properties..
execute if entity @p[scores={spawn_cooldown=20000..},tag=!spawn_teleport_enabled] run tag @p[scores={spawn_cooldown=20000..},tag=!spawn_teleport_enabled] add enabled_spawn_teleport

# enabled spawn teleport
execute if entity @p[tag=enabled_spawn_teleport] as @p[tag=enabled_spawn_teleport] run scoreboard players set @s spawn_cooldown 0
execute if entity @p[tag=enabled_spawn_teleport] as @p[tag=enabled_spawn_teleport] run scoreboard players enable @s spawn
execute if entity @p[tag=enabled_spawn_teleport] as @p[tag=enabled_spawn_teleport] run tag @s add spawn_teleport_enabled
execute if entity @p[tag=enabled_spawn_teleport] as @p[tag=enabled_spawn_teleport] run tag @s remove enabled_spawn_teleport

#
execute if entity @p[tag=!spawn_teleport_enabled] run scoreboard objectives remove spawn_cooldown
execute unless entity @p[tag=!spawn_teleport_enabled] run scoreboard objectives add spawn_cooldown minecraft.custom:minecraft.play_one_minute "Teleport To Spawn Point(s) Cooldown Timer"

execute if entity @p[scores={spawn=1..}] run tp @p[scores={spawn=1..}] @r[tag=spawn_point]
execute if entity @p[scores={spawn=1..}] run tag @p[scores={spawn=1..}] remove spawn_teleport_enabled
