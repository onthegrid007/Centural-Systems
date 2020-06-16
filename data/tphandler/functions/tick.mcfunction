execute as @e[tag=TPEnabled,tag=!TPRun,tag=!WarpRun,tag=!TPResponse,scores={TP=..-2},limit=1] run function tphandler:warp
execute as @e[tag=TPEnabled,tag=!TPRun,tag=!WarpRun,tag=!TPResponse,scores={TP=-1},limit=1] run function tphandler:tp
execute as @e[tag=TPEnabled,tag=!TPRun,tag=!WarpRun,tag=!TPResponse,scores={TP=1..},limit=1] run function tphandler:tp

execute as @e[tag=TPEnabled,tag=!TPRun,tag=!WarpRun,tag=!TP_Response,scores={TP_Response=..-1},limit=1] run function tphandler:tp_response
execute as @e[tag=TPEnabled,tag=!TPRun,tag=!WarpRun,tag=!TP_Response,scores={TP_Response=1..},limit=1] run function tphandler:tp_response

function tphandler:reset