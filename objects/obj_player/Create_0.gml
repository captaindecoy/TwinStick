event_inherited();
ds_stack_pop(state);
ds_stack_push(state, state_player);

rhaxis = 0// gamepad_axis_value(0, gp_axisrh);
rvaxis = 0// gamepad_axis_value(0, gp_axisrv);
image_speed = 0;
movespeed = 4;
starting_fire_rate = 12;
fire_rate = starting_fire_rate;//7//14; //4 for beam
fire_rate_timer = fire_rate;
power_rate = room_speed * 8;
power_rate_timer = 0;
analog_deadzone = .20;
max_health = 3;
current_health = max_health;
fire_mode = 1;
muzzel_flash = false;
bullet_damage = 1;
bullet_piercing = true
mouse_x_prev = mouse_x;
mouse_y_prev = mouse_y;
mouse_active = false;
hurt_timer_rate = room_speed;// / 2;
hurt_timer = -1;
hurt_direction = 0;
crosshair = instance_create_layer(x + 128, y, "Instances", obj_crosshair);
