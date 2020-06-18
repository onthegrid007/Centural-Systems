execute as @a[tag=!ReturningPlayer] run function playerhandler:new_player
execute as @a[scores={login_handler=1..}] run function playerhandler:returning_player
execute as @a[scores={deathTrigger=1..}] run function playerhandler:on_death

function playerhandler:reset