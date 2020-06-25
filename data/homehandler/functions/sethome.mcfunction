tag @s add sethomeRun
execute at @s run function homehandler:summon
execute as @e[nbt={Attributes:[{Name:"generic.knockbackResistance",Base:0d}]}] run say hi
say sethome
tag @s remove sethomeRun

execute as @a run function homehandler:enables
