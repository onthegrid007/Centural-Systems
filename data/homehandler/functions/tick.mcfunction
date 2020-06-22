execute as @a[scores={HOME=..-1}] run function homehandler:negativevalue
execute as @a[scores={SETHOME=..-1}] run function homehandler:negativevalue
execute as @a[scores={DELHOME=..-1}] run function homehandler:negativevalue

execute as @a[scores={HOME=1..3}] run function homehandler:home
execute as @a[scores={SETHOME=1..3}] run function homehandler:sethome
execute as @a[scores={DELHOME=1..3}] run function homehandler:delhome

execute as @a[scores={HOME=4..}] run function homehandler:limit
execute as @a[scores={SETHOME=4..}] run function homehandler:limit
execute as @a[scores={DELHOME=4..}] run function homehandler:limit

function homehandler:reset