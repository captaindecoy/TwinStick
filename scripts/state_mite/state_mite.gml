/// @description state_baddie01
function state_mite() {

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
			
			if(distance_to_object(obj_player) < 150)
			{
				if(irandom(100) > 99)
					movespeed = 4;
			}
			
	    }
		x += lengthdir_x(1, target_dir) * movespeed;
		y += lengthdir_y(1, target_dir) * movespeed;
	    //Makes for a cool stop motion/old school look
	    //x += lengthdir_x(2, target_dir) * movespeed;
	    //y += lengthdir_y(2, target_dir) * movespeed;
	    //update_timer = 10;
		update_timer = irandom_range(1, 6);
	}

	//x += lengthdir_x(1, target_dir) * movespeed;
	//y += lengthdir_y(1, target_dir) * movespeed;

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
		part_particles_create(global.P_System, x, y, global.Particle1, 50);
		//audio_play_sound(snd_explosion2, 10, false);
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
