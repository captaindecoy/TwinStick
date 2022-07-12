/// @description Insert description here
// You can write your code in this editor
if(destroy == false)
{
	/*
	inst = collision_circle(x, y, radius, obj_enemy_parent, false, true);
	if(inst != noone)
	{
		inst.hp--;
	}
	destroy = true; //radius += rate;
	*/
	var _list = ds_list_create();
	var _num = collision_circle_list(x, y, radius, obj_enemy_parent, false, true, _list, false);
	if (_num > 0)
	{
	    for (var i = 0; i < _num; i++)//++i;)
	    {
	        _list[| i].hp--;
	    }
	}
	ds_list_destroy(_list);
	part_particles_create(global.P_System, x, y, global.Particle3, 120);
	destroy = true;	
}
else
{
	instance_destroy();
}