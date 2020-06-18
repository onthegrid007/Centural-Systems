#Remove


scoreboard objectives remove position_x
scoreboard objectives remove position_y
scoreboard objectives remove position_z
scoreboard objectives remove rotation_pitch
scoreboard objectives remove rotation_yaw
scoreboard objectives remove one_time_math

scoreboard objectives remove health
scoreboard objectives remove fly



scoreboard objectives remove sprint
scoreboard objectives remove swim
scoreboard objectives remove walk_on_water
scoreboard objectives remove walk
scoreboard objectives remove walk_under_water
scoreboard objectives remove DELHOME
scoreboard objectives remove GM
scoreboard objectives remove HOME
scoreboard objectives remove MOD
scoreboard objectives remove POS
scoreboard objectives remove SETHOME
scoreboard objectives remove TP
scoreboard objectives remove TPReply
scoreboard objectives remove TPO
scoreboard objectives remove TPOHERE

#Add
scoreboard objectives add mod_level dummy "Mod Level"
scoreboard objectives add play_time_ranks dummy "Play Time Rankings"
scoreboard objectives add position_x dummy "POS X"
scoreboard objectives add position_y dummy "POS Y"
scoreboard objectives add position_z dummy "POS Z"
scoreboard objectives add rotation_pitch dummy "ROT Pitch"
scoreboard objectives add rotation_yaw dummy "ROT Yaw"
scoreboard objectives add one_time_math dummy
scoreboard objectives add teleport_id dummy "TP ID"
scoreboard objectives add health health "Health"
scoreboard objectives add fly minecraft.custom:minecraft.fly_one_cm  "Fly One CM"
scoreboard objectives add login_handler minecraft.custom:minecraft.leave_game "Login Handler"
scoreboard objectives add clear_lag_timer minecraft.custom:minecraft.play_one_minute  "Clear Lag Timer"
scoreboard objectives add lemon_timer minecraft.custom:minecraft.play_one_minute  "Lemon Timer"
scoreboard objectives add sprint minecraft.custom:minecraft.sprint_one_cm "Sprint One CM"
scoreboard objectives add swim minecraft.custom:minecraft.swim_one_cm "Swim One CM"
scoreboard objectives add walk_on_water minecraft.custom:minecraft.walk_on_water_one_cm "Walk On Water One CM"
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm "Walk One CM"
scoreboard objectives add walk_under_water minecraft.custom:minecraft.walk_under_water_one_cm "Walk Under Water One CM"
scoreboard objectives add DELHOME trigger 
scoreboard objectives add GM trigger
scoreboard objectives add HOME trigger
scoreboard objectives add MOD trigger
scoreboard objectives add POS trigger
scoreboard objectives add SETHOME trigger
scoreboard objectives add TP trigger
scoreboard objectives add TPReply trigger
scoreboard objectives add TPO trigger
scoreboard objectives add TPOHERE trigger