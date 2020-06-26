execute as @a[tag=!ReturningPlayer] run function player_handler:new_player
execute as @a[scores={login_handler=1..}] run function player_handler:returning_player
execute as @a[scores={deathTrigger=1..}] run function player_handler:on_death

function player_handler:reset