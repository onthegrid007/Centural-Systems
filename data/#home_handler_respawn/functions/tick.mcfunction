execute as @a[scores={HOME=..-1}] run function home_handler:negativevalue
execute as @a[scores={SETHOME=..-1}] run function home_handler:negativevalue
execute as @a[scores={DELHOME=..-1}] run function home_handler:negativevalue

#Home1
execute as @a[scores={HOME=1}] run function home_handler:home1/home
execute as @a[scores={SETHOME=1}] run function home_handler:home1/sethome
execute as @a[scores={DELHOME=1}] run function home_handler:home1/delhome

execute as @a[scores={HOME=2..}] run function home_handler:limit
execute as @a[scores={SETHOME=2..}] run function home_handler:limit
execute as @a[scores={DELHOME=2..}] run function home_handler:limit

function home_handler:reset