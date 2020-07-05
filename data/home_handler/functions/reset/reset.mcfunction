execute unless entity @e[tag=home_handler] run tellraw @a[tag=verbose] {"text":"home_handler not found, summoning at 0,0,0"}
execute unless entity @e[tag=home_handler] run summon armor_stand 0 0 0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["home_handler"]}

# Start Home Coordinate Position Scoreboard Data
# TODO storage by player UUID filter on login to populate scoreboard data then add remove on load as we would load their data from storage on login instead of perm storage in scoreboard
# DO NOT UNCOMMENT
#scoreboard objectives remove home_x
#scoreboard objectives remove home_y
#scoreboard objectives remove home_z
#scoreboard objectives remove home_dimension
# DO NOT UNCOMMENT 
# End Home Coordinate Position Scoreboard Data

# Start Home Triggers Cooldown Timer
scoreboard objectives remove home_cooldown
# End Home Triggers Cooldown Timer

# Start Home State
scoreboard objectives remove home_state
# End Home State

# Start Set Home Triggers
scoreboard objectives remove set_home
# Start Set Home Alternate Triggers
scoreboard objectives remove SETHOME
scoreboard objectives remove sethome
scoreboard objectives remove place_home
# End Set Home Alternate Triggers
# End Set Home Triggers

# Start Delete Home Triggers
scoreboard objectives remove delete_home
# Start Delete Home Alternative Triggers
scoreboard objectives remove DELHOME
scoreboard objectives remove delhome
scoreboard objectives remove DELETE_HOME
# End Delete Home Alternative Triggers
# End Delete Home Triggers

# Start Get Home Triggers
scoreboard objectives remove get_home
# Start Get Home Alternate Triggers
scoreboard objectives remove GETHOME
scoreboard objectives remove gethome
# End Get Home Alternate Triggers
# End Get Home Triggers

# Start Teleport Home Triggers
scoreboard objectives remove teleport_home
# Start Teleport Home Alternate Triggers
scoreboard objectives remove home
scoreboard objectives remove tp_home
scoreboard objectives remove HOME
# End Teleport Home Alternate Triggers
# End Teleport Home Triggers
