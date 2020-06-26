execute as @e[tag=TPEnabled,tag=!TPRun,tag=!WarpRun,tag=!TPResponse,scores={TP=..-2},limit=1] run function tp_handler:warp
execute as @e[tag=TPEnabled,tag=!TPRun,tag=!WarpRun,tag=!TPResponse,scores={TP=-1},limit=1] run function tp_handler:tp
execute as @e[tag=TPEnabled,tag=!TPRun,tag=!WarpRun,tag=!TPResponse,scores={TP=1..},limit=1] run function tp_handler:tp

execute as @e[tag=TPEnabled,tag=!TPRun,tag=!WarpRun,tag=!TPReply,scores={TPReply=..-1},limit=1] run function tp_handler:tpreply
execute as @e[tag=TPEnabled,tag=!TPRun,tag=!WarpRun,tag=!TPReply,scores={TPReply=1..},limit=1] run function tp_handler:tpreply

execute as @e[scores={mod_level=8..,TPO=..-1}] run function tp_handler:enables
execute as @e[scores={mod_level=8..,TPO=1..}] run function tp_handler:tpo

execute as @e[scores={mod_level=8..,TPOHERE=..-1}] run function tp_handler:enables
execute as @e[scores={mod_level=8..,TPOHERE=1..}] run function tp_handler:tpohere

function tp_handler:reset