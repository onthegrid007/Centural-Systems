tag @s add sethomeRun
execute at @s run function home_handler:summon
execute as @e[nbt={Attributes:[{Name:"generic.knockbackResistance",Base:0d}]}] run say hi
say sethome
tag @s remove sethomeRun

execute as @a run function home_handler:enables
