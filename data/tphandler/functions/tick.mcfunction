execute as @e[tag=TPEnabled,tag=!TPRun,tag=!WarpRun,tag=!TPResponse,scores={TP=..-2},limit=1] run function tphandler:warp
execute as @e[tag=TPEnabled,tag=!TPRun,tag=!WarpRun,tag=!TPResponse,scores={TP=-1},limit=1] run function tphandler:tp
execute as @e[tag=TPEnabled,tag=!TPRun,tag=!WarpRun,tag=!TPResponse,scores={TP=1..},limit=1] run function tphandler:tp

execute as @e[tag=TPEnabled,tag=!TPRun,tag=!WarpRun,tag=!TPReply,scores={TPReply=..-1},limit=1] run function tphandler:tpreply
execute as @e[tag=TPEnabled,tag=!TPRun,tag=!WarpRun,tag=!TPReply,scores={TPReply=1..},limit=1] run function tphandler:tpreply

execute as @e[scores={mod_level=8..,TPO=..-1}] run function tphandler:enables
execute as @e[scores={mod_level=8..,TPO=1..}] run function tphandler:tpo

execute as @e[scores={mod_level=8..,TPOHERE=..-1}] run function tphandler:enables
execute as @e[scores={mod_level=8..,TPOHERE=1..}] run function tphandler:tpohere

function tphandler:reset