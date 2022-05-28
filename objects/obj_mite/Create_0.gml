event_inherited();
ds_stack_push(state, state_baddie_spawn);

image_speed = 0;
active = false;
active_state = state_mite;
movespeed = 2;
//update_timer = 10;
update_timer = irandom_range(1, 5);
hp = 1;
previousHp = hp;
spawn_timer = room_speed;
health_segment = sprite_width / hp;
rush_timer = room_speed * 2;
rush_speed = 3;

if(instance_number(obj_player) > 0)
{
    target_dir = point_direction(x, y, obj_player.x, obj_player.y);
    image_angle = target_dir;
}

