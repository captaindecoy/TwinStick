event_inherited();
ds_stack_push(state, state_baddie_spawn);

active = false;
active_state = state_wall;
spawn_timer = room_speed;
//fire_interval = room_speed * 1.5; // was 2 previously
//fire_timer = fire_interval;
hp = 4;
health_segment = sprite_width / hp;

