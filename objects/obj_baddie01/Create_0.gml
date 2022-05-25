event_inherited();
ds_stack_push(state, state_baddie_spawn);

active = false;
active_state = state_baddie01;
movespeed = 3;
update_timer = 10;
hp = 2;
spawn_timer = room_speed;
health_segment = sprite_width / hp;

if(instance_number(obj_player) > 0)
{
    target_dir = point_direction(x, y, obj_player.x, obj_player.y);
    image_angle = target_dir;
}

