event_inherited();
ds_stack_push(state, state_baddie_spawn);

active = false;
active_state = state_spikeyball;
movespeed = 3;
update_timer = 10;
hp = 5;
spawn_timer = room_speed;
health_segment = sprite_width / hp;
target_dir = point_direction(x, y, x + 1, y - 1);
// weird behavior here below, need to revisit bouncing off walls logic
//target_dir = point_direction(x, y, x + irandom_range(-1, 1), y + irandom_range(-1, 1)); 
fire_interval = room_speed * 3;
fire_timer = fire_interval;

/*
if(instance_number(obj_player) > 0)
{
    target_dir = point_direction(x, y, obj_player.x, obj_player.y);
    image_angle = target_dir;
}
*/
