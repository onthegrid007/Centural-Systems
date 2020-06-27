tag @s add sethomeRun
execute at @s run spawnpoint @s ~ ~ ~
say sethome
tag @s remove sethomeRun

execute as @a run function home_handler:enables
