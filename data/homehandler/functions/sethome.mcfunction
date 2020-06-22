tag @s add sethomeRun
execute at @s run function homehandler:summon
execute as @e[nbt={HandItems:[{tag:{homeState:0L}},{}]}] run say hi
say sethome
tag @s remove sethomeRun

execute as @a run function homehandler:enables
