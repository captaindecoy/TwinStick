event_inherited();
ds_stack_pop(state);
ds_stack_push(state, state_player);

image_speed = 0;
movespeed = 4;
fire_rate = 12//7//14;
fire_rate_timer = fire_rate;
power_rate = room_speed * 8;
power_rate_timer = 0;
analog_deadzone = .20;
max_health = 3;
current_health = max_health;
fire_mode = 1;
muzzel_flash = false;
bullet_damage = 1;


