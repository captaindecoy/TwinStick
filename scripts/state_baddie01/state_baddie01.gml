/// @description state_baddie01
function state_baddie01() {

	if(update_timer > 0)
	{
	    update_timer--;
	}
	else
	{
	    if(instance_number(obj_player) > 0)
	    {
	        target_dir = point_direction(x, y, obj_player.x, obj_player.y);
	        image_angle = target_dir;
	    }
	    //Makes for a cool stop motion/old school look
	    //x += lengthdir_x(2, target_dir) * movespeed;
	    //y += lengthdir_y(2, target_dir) * movespeed;
	    update_timer = 10;
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
	if(hp == 0)
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
