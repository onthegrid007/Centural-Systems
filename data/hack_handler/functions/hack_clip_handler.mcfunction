execute if entity @p[scores={detection_timer=200..}] as @a[scores={detection_timer=200..}] run scoreboard players reset @s clip_detection
execute if entity @p[scores={detection_timer=200..}] as @a[scores={detection_timer=200..}] run scoreboard players reset @s detection_timer
execute if entity @p[gamemode=!spectator] as @a[gamemode=!spectator] at @s unless block ~ ~ ~ air unless block ~ ~1 ~ air run scoreboard players add @s clip_detection 1
execute if entity @p[scores={clip_detection=195..},tag=!flag_as_clipping] as @a[scores={clip_detection=195..},tag=!flag_as_clipping] run tellraw @s {"text":"You have been detected by your clip_handler. You are receiving an infraction and will be placed in jail until further review."}
execute if entity @p[scores={clip_detection=195..},tag=!flag_as_clipping] as @a[scores={clip_detection=195..},tag=!flag_as_clipping] run tag @s add flag_as_clipping
execute if entity @p[scores={clip_detection=195..},tag=!jail] as @a[scores={clip_detection=195..},tag=!jail] run tag @s add jail
