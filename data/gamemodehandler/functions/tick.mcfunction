execute as @a[scores={GM=..-2}] run function gamemodehandler:gamemodenotavaliable
execute as @a[scores={GM=0}] run function gamemodehandler:survival
execute as @a[scores={mod_level=10..,GM=1}] run function gamemodehandler:creative
execute as @a[scores={mod_level=..9,GM=1}] run function gamemodehandler:gamemodenotavaliable
execute as @a[scores={GM=2}] run function gamemodehandler:adventure
execute as @a[scores={mod_level=8..,GM=3}] run function gamemodehandler:spectator
execute as @a[scores={mod_level=..7,GM=3}] run function gamemodehandler:gamemodenotavaliable
execute as @a[scores={GM=4..}] run function gamemodehandler:gamemodenotavaliable

function gamemodehandler:reset