execute if entity @p[scores={detection_timer=50..}] as @a[scores={detection_timer=50..}] run scoreboard players reset @s clip_detection
execute if entity @p[scores={detection_timer=50..}] as @a[scores={detection_timer=50..}] run scoreboard players reset @s detection_timer
execute if entity @p[gamemode=!spectator] as @a[gamemode=!spectator] at @s unless block ~ ~ ~ air unless block ~ ~1 ~ air run scoreboard players add @s clip_detection 1
execute if entity @p[scores={clip_detection=45..}] as @a[scores={clip_detection=45..}] run say noclip_test