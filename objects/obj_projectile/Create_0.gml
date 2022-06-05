event_inherited();
ds_stack_pop(state);
ds_stack_push(state, state_projectile);

rhvalue = 0;
rvvalue = 0;
movespeed = 0;
dir = 0;
image_angle = 0;
timer = 0;
image_speed = 0;
destroy = false;
damage = 1;
//bullet_piercing = false;
hp = 1;

enemies_hit_list = ds_list_create();
if(obj_player.bullet_piercing == true)
{
	hp = 3;
}