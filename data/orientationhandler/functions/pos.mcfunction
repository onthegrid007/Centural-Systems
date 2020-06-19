# Access Log:
# Handle	Date		Comment
# Bonesdog	06/19/2020	Changed tellraw to output proper dimension string, needs to be pulled out of herelater similar to how scores are refferenced but to storage handler & inital comment header.
# Description: Trigger Function runs when user runs `trigger pos`

function orientationhandler:get
tellraw @s ["",{"text":"[","bold":true,"color":"dark_blue"},{"text":"C","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"e","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"n","bold":true,"color":"dark_red","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"t","bold":true,"color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"u","bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"r","bold":true,"color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"a","bold":true,"color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"l","bold":true,"color":"dark_aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Datapack By: Respawn_101","color":"aqua"}]}},{"text":"] ","bold":true,"color":"dark_blue"},{"text":"Orientation Information for: ","color":"dark_red"},{"selector":"@s","color":"dark_blue"}]
tellraw @s ["",{"text":"Dimension: ","bold":true,"color":"dark_red"},{"nbt":"Dimension","entity":"@s","color":"blue"}]
tellraw @s ["",{"text":"X: ","bold":true,"color":"dark_red"},{"score":{"name":"@s","objective":"position_x"},"color":"blue"}]
tellraw @s ["",{"text":"Y: ","bold":true,"color":"dark_red"},{"score":{"name":"@s","objective":"position_y"},"color":"blue"}]
tellraw @s ["",{"text":"Z: ","bold":true,"color":"dark_red"},{"score":{"name":"@s","objective":"position_z"},"color":"blue"}]
tellraw @s ["",{"text":"Pitch: ","bold":true,"color":"dark_red"},{"score":{"name":"@s","objective":"rotation_pitch"},"color":"blue"}]
tellraw @s ["",{"text":"Yaw: ","bold":true,"color":"dark_red"},{"score":{"name":"@s","objective":"rotation_yaw"},"color":"blue"}]
execute as @a run function orientationhandler:enables
