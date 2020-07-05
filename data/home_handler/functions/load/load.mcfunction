# Start Reset Home Handler
function home_handler:reset/reset
# End Reset Home Handler

execute unless entity @e[tag=home_handler] run tellraw @a[tag=verbose] {"text":"home_handler not found, summoning at 0,0,0"}
execute unless entity @e[tag=home_handler] run summon armor_stand 0 0 0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["home_handler"]}

# TODO storage by player UUID filter on login to populate scoreboard data then add remove on load as we would load their data from storage on login instead of perm storage in scoreboard
scoreboard objectives add home_x dummy "Home X Coordinate"
scoreboard objectives add home_y dummy "Home Y Coordinate"
scoreboard objectives add home_z dummy "Home Z Coordinate"
scoreboard objectives add home_dimension dummy "Home Dimension"

# Start Home Triggers Cooldown Timer
scoreboard objectives remove home_cooldown
scoreboard objectives add home_cooldown minecraft.custom:minecraft.play_one_minute "Home Triggers Cooldown Timer"
scoreboard players set @e[tag=home_handler] home_cooldown 100
# End Home Triggers Cooldown Timer

# Start Home State
scoreboard objectives remove home_state
scoreboard objectives add home_state dummy "Home State"
scoreboard players set disabled home_state -1
scoreboard players set enabled home_state 1
scoreboard players set cooldown home_state 0
# End Home State

# Start Set Home Triggers
scoreboard objectives add set_home trigger "Set Home Trigger"
# Start Set Home Alternate Triggers
scoreboard objectives add SETHOME trigger "Set Home Alternate Trigger One"
scoreboard objectives add sethome trigger "Set Home Alternate Trigger Two"
scoreboard objectives add place_home trigger "Set Home Alternate Trigger Three"
# End Set Home Alternate Triggers
# End Set Home Triggers

# Start Get Home Triggers
scoreboard objectives add get_home trigger "Get Home Trigger"
# Start Get Home Alternate Triggers
scoreboard objectives add GETHOME trigger "Get Home Alternate Trigger One"
scoreboard objectives add gethome trigger "Get Home Alternate Trigger Two"
# End Get Home Alternate Triggers
# End Get Home Triggers

# Start Teleport Home Triggers
scoreboard objectives add teleport_home trigger "Teleport Home Trigger"
# Start Teleport Home Alternate Triggers
scoreboard objectives add home trigger "Teleport Home Alternate Trigger One"
scoreboard objectives add tp_home trigger "Teleport Home Alternate Trigger Two"
scoreboard objectives add HOME trigger "Teleport Home Alternate Trigger Three"
# End Teleport Home Alternate Triggers
# End Teleport Home Triggers
