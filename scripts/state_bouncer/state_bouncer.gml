/// @description state_baddie01
function state_bouncer() {
	/*
	if(previousHp != hp)
	{
		target_dir = point_direction(x, y, irandom_range(global.left_border, global.right_border), irandom_range(global.top_border, global.bottom_border));
		update_timer = room_speed;
		image_angle = target_dir;
	}
	*/
	
	if(update_timer > 0)
	{
	    update_timer--;
	}
	else
	{
		inst_below = noone;
		inst_above = noone;
		inst_right = noone;
		inst_left = noone;
		
		if(dir == 0 || dir = 180)
		{
			inst_below = collision_rectangle(x - sprite_width/2, y, x + sprite_width, y + 1000, obj_player, false, true);
			inst_above = collision_rectangle(x - sprite_width/2, y, x + sprite_width, y - 1000, obj_player, false, true);
		}
		if(dir == 90 || dir = 270)
		{
			inst_right = collision_rectangle(x, y - sprite_height/2, x + 1000, y + sprite_height/2, obj_player, false, true);
			inst_left = collision_rectangle(x, y - sprite_height/2, x - 1000, y + sprite_height/2, obj_player, false, true);
		}
		if(inst_below != noone || inst_above != noone || inst_right != noone || inst_left != noone)
		{
			projectile = instance_create_layer(x,y,"Instances",obj_baddie02_projectile);
		    projectile.dir = point_direction(x, y, obj_player.x, obj_player.y);;
		    projectile.image_angle = projectile.dir;
		}
	    //Makes for a cool stop motion/old school look
	    //x += lengthdir_x(2, target_dir) * movespeed;
	    //y += lengthdir_y(2, target_dir) * movespeed;
	    update_timer = 10;
	}

	if(y < global.top_border)
	{
		dir = 270;	
	}
	if(y > global.bottom_border)
	{
		dir = 90;	
	}
	if(x < global.left_border)
	{
		dir = 0;	
	}
	if(x > global.right_border)
	{
		dir = 180;	
	}

	x += lengthdir_x(1, dir) * movespeed;
	y += lengthdir_y(1, dir) * movespeed;

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
		part_particles_create(global.P_System, x, y, global.Particle1, 80);
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
	previousHp = hp;
}
