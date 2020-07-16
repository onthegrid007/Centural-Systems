# TODO add enablers after we have a reset_handler and player_logout_handler running resets on login for tags
execute as @a run scoreboard players set @s warp_math 0
execute as @a run scoreboard players operation @s warp_math = @s warp_cooldown
execute as @a store result score @s warp_math run scoreboard players operation @s warp_math -= @e[tag=warp_handler] warp_cooldown
execute as @a[scores={warp_math=0..}] run scoreboard players enable @s warp_to_spawn
execute as @a[scores={warp_math=0..}] run scoreboard players set @s warp_cooldown 0