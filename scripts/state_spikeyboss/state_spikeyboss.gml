/// @description state_baddie01
function state_spikeyboss() {
	image_angle += 1
	
	if(fire_timer > 0)
	{
	    fire_timer--;
	}
	else
	{
	    projectile1 = instance_create_layer(x,y,"Instances",obj_baddie02_projectile);
		projectile2 = instance_create_layer(x,y,"Instances",obj_baddie02_projectile);
		projectile3 = instance_create_layer(x,y,"Instances",obj_baddie02_projectile);
		projectile4 = instance_create_layer(x,y,"Instances",obj_baddie02_projectile);
	    projectile1.dir = image_angle;//point_direction(x, y, x + 1, y - 1);
		projectile2.dir = image_angle + 90;//point_direction(x, y, x - 1, y - 1);
		projectile3.dir = image_angle + 180;//point_direction(x, y, x - 1, y + 1);
		projectile4.dir = image_angle + 270;//point_direction(x, y, x + 1, y + 1);
		//projectile1.dir = image_angle;
		//projectile2.dir = image_angle + 90;
		//projectile3.dir = image_angle - 90;
		//projectile4.dir = image_angle + 180;
	    projectile1.image_angle = projectile1.dir;
		projectile2.image_angle = projectile2.dir;
		projectile3.image_angle = projectile3.dir;
		projectile4.image_angle = projectile4.dir;
		// default movespeed is 10 on the object
		projectile1.movespeed = 3;
		projectile2.movespeed = 3;
		projectile3.movespeed = 3;
		projectile4.movespeed = 3;
	    //forgetting timer reset just makes infinite! kinda cool actually
		projectile1.x += (lengthdir_x(1, projectile1.dir)) * 20 * projectile1.movespeed;
		projectile1.y += (lengthdir_y(1, projectile1.dir)) * 20 * projectile1.movespeed;
		projectile2.x += (lengthdir_x(1, projectile2.dir)) * 20 * projectile2.movespeed;
		projectile2.y += (lengthdir_y(1, projectile2.dir)) * 20 * projectile2.movespeed;
		projectile3.x += (lengthdir_x(1, projectile3.dir)) * 20 * projectile3.movespeed;
		projectile3.y += (lengthdir_y(1, projectile3.dir)) * 20 * projectile3.movespeed;
		projectile4.x += (lengthdir_x(1, projectile4.dir)) * 20 * projectile4.movespeed;
		projectile4.y += (lengthdir_y(1, projectile4.dir)) * 20 * projectile4.movespeed;
	    fire_timer = fire_interval;
	}
	
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
		part_particles_create(global.P_System, x, y, global.Particle1, 100);
		audio_play_sound(snd_explosion3, 10, false);
		room_goto(rm_win_screen);
	    //instance_destroy();
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
