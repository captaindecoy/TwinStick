event_inherited();
ds_stack_push(state, state_baddie_spawn);

active = false;
active_state = state_bouncer;
movespeed = 5;
update_time = 10;
update_timer = update_time;
fire_rate = 15;
fire_rate_timer = fire_rate;
hp = 3;
previousHp = hp;
spawn_timer = room_speed;
health_segment = sprite_width / hp;
dir = 90;