execute as @a[scores={HOME=..-1}] run function home_handler:negativevalue
execute as @a[scores={SETHOME=..-1}] run function home_handler:negativevalue
execute as @a[scores={DELHOME=..-1}] run function home_handler:negativevalue

execute as @a[scores={HOME=1..3}] run function home_handler:home
execute as @a[scores={SETHOME=1..3}] run function home_handler:sethome
execute as @a[scores={DELHOME=1..3}] run function home_handler:delhome

execute as @a[scores={HOME=4..}] run function home_handler:limit
execute as @a[scores={SETHOME=4..}] run function home_handler:limit
execute as @a[scores={DELHOME=4..}] run function home_handler:limit

function home_handler:reset