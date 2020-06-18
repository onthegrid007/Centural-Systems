gamemode spectator @s
say spectator
execute as @a[scores={mod_level=1..}] run function gamemodehandler:enables
