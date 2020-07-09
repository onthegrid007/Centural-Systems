execute if entity @p[scores={fly_timer=2000..,fly_detection=20000..}] as @a[scores={fly_timer=2000..,fly_detection=20000..}] run function hack_handler:tag/add/hack_tag_add_flag_as_flying_handler
execute if entity @p[scores={fly_timer=2000..}] as @a[scores={fly_timer=2000..}] run function hack_handler:tag/add/hack_tag_add_reset_fly_timer_handler
