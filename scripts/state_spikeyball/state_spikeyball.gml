/// @description state_baddie01
function state_spikeyball() {
	
	
	if(y + (lengthdir_y(1, target_dir) * movespeed) < global.top_border
	|| y + (lengthdir_y(1, target_dir) * movespeed) > global.bottom_border)
	{
		target_dir = -(target_dir);
	}
	
	if(x + (lengthdir_x(1, target_dir) * movespeed) > global.right_border)
	{
		if(target_dir < 0)//show_debug_message("Spikey Ball dir before: " + string(target_dir));
			target_dir -= 90;
		else
			target_dir += 90;
	}
	
	if(x + (lengthdir_x(1, target_dir) * movespeed) < global.left_border)
	{
		if(target_dir > 0)
			target_dir -= 90;
		else
			target_dir += 90;
	}
	
	x += lengthdir_x(1, target_dir) * movespeed;
	y += lengthdir_y(1, target_dir) * movespeed;
	/*
	collider = instance_place(x, y, obj_projectile)
	if(collider != noone)
	{
	    with(collider)
	    {
	        instance_destroy();
	    }
	    if(hp > 0)
	    {
	        hp--;
	    }
	    if(hp == 0)
	    {
	        instance_destroy();
	    }
	}
	*/
	if(hp <= 0)
	{
	    instance_destroy();
	}
	/*
	collider = instance_place(x, y, obj_player)
	if(collider != noone)
	{
	    if(collider.current_health > 0)
	    {
	        collider.current_health--;
	        instance_destroy();
	    }
	}
	*/



}
