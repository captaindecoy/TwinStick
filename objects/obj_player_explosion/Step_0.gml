/// @description Insert description here
// You can write your code in this editor
if(destroy != false)
{
	inst = collision_circle(x, y, radius, obj_enemy_parent, false, true);
	if(inst != noone)
	{
		inst.hp--;
	}
	destroy = true; //radius += rate;
}
else
{
	instance_destroy();
}