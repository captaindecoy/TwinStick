event_inherited();
ds_stack_push(state, state_baddie_spawn);

active = false;
active_state = state_bouncer;
movespeed = 3;
update_timer = 10;
hp = 3;
previousHp = hp;
spawn_timer = room_speed;
health_segment = sprite_width / hp;
dir = 90;