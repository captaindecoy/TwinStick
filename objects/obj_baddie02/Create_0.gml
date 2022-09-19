event_inherited();
ds_stack_push(state, state_baddie_spawn);

image_speed = 0;
active = false;
active_state = state_baddie02;
spawn_timer = room_speed;
fire_interval = room_speed * 1.5; // was 2 previously
fire_timer = fire_interval;
hp = 4;
health_segment = sprite_width / hp;
dir = 0;

image_xscale = 1.2;
image_yscale = 1.2;

