/// @description state_player
function state_player() {
	if(image_index == 1)
	{
	    image_index = 0;
	}

	if(fire_rate_timer < fire_rate)
	{
	    fire_rate_timer++;
	}

	var lhaxis = gamepad_axis_value(0, gp_axislh);
	var lvaxis = gamepad_axis_value(0, gp_axislv);
	ldir = point_direction(0, 0, lhaxis, lvaxis);

	//show_debug_message("lhaxis = " + string(lhaxis));
	//show_debug_message("lvaxis = " + string(lvaxis));
	//show_debug_message("ldir = " + string(ldir));

	var rhaxis = gamepad_axis_value(0, gp_axisrh);
	var rvaxis = gamepad_axis_value(0, gp_axisrv);
	rdir = point_direction(0, 0, rhaxis, rvaxis);

	if(abs(rhaxis) > analog_deadzone || abs(rvaxis) > analog_deadzone)
	{
	    image_angle = rdir;
	}

	if(abs(lhaxis) > analog_deadzone || abs(lvaxis) > analog_deadzone)
	{
	    dx = (lengthdir_x(lhaxis, ldir)) * sign(lhaxis) * movespeed;
	    dy = (lengthdir_y(lvaxis, ldir)) * sign(lvaxis) * movespeed;
	    if((x + dx - sprite_width / 2) > 96 && (x + dx + sprite_width / 2) < room_width - 96)
	    {
	        x += (lengthdir_x(lhaxis, ldir)) * sign(lhaxis) * movespeed;
	    }
	    if((y + dy - sprite_height / 2) > 96 && (y + dy + sprite_height / 2) < room_height-96)
	    {
	        y += dy;
	    }
	}

	if((abs(rhaxis) > .5 || abs(rvaxis) > .5) && fire_rate_timer == fire_rate)
	{
	    switch(fire_mode)
	    {
	        case 1: 
	            bullet = instance_create(x,y,obj_projectile);
	            bullet.rhvalue = sign(gamepad_axis_value(0, gp_axisrh));
	            bullet.rvvalue = sign(gamepad_axis_value(0, gp_axisrv));
	            bullet.movespeed = 24;
	            bullet.dir = obj_player.rdir;
	            bullet.image_angle = bullet.dir;
	            bullet.timer = room_speed/2;
				bullet.damage = bullet_damage;
	            fire_rate_timer = 0;
	            audio_play_sound(snd_shot, 10, false);
	            break;
	        case 2:
	            xspawn = x + lengthdir_x(sprite_width*.75, obj_player.rdir - 90);
	            yspawn = y + lengthdir_y(sprite_height*.75, obj_player.rdir - 90);
            
	            create_bullet(obj_projectile, xspawn, yspawn, 12, room_speed/2, obj_player.rdir);
            
	            xspawn = x + lengthdir_x(sprite_width*.75, obj_player.rdir + 90);
	            yspawn = y + lengthdir_y(sprite_height*.75, obj_player.rdir + 90);
            
	            create_bullet(obj_projectile, xspawn, yspawn, 12, room_speed/2, obj_player.rdir);
				audio_play_sound(snd_shot, 7, false);
	            /*
	            bullet = instance_create(xspawn,yspawn,obj_projectile);
	            bullet.rhvalue = sign(gamepad_axis_value(0, gp_axisrh));
	            bullet.rvvalue = sign(gamepad_axis_value(0, gp_axisrv));
	            bullet.movespeed = 12;
	            bullet.dir = obj_player.rdir;
	            bullet.image_angle = bullet.dir;
	            bullet.timer = room_speed/2;
	            */
	            fire_rate_timer = 0;
	            break;
	        case 3:
	            create_bullet(obj_projectile, x, y, 12, room_speed/2, obj_player.rdir);
	            create_bullet(obj_projectile, x, y, 12, room_speed/2, obj_player.rdir - 20);
	            create_bullet(obj_projectile, x, y, 12, room_speed/2, obj_player.rdir - 40);
	            create_bullet(obj_projectile, x, y, 12, room_speed/2, obj_player.rdir + 20);
	            create_bullet(obj_projectile, x, y, 12, room_speed/2, obj_player.rdir + 40);
            
	            fire_rate_timer = 0;
	            break;
	    }
	    muzzel_flash = true;
	}

	collider = instance_place(x, y, obj_enemy_parent)
	if(collider != noone && collider.active == true)
	{
	    with(collider)
	    {
	        instance_destroy();
	    }
	    if(current_health > 0)
	    {
	        current_health--;
	        image_index = 1;
	    }
	}

	if(current_health <= 0)
	{
		instance_destroy();
	    //room_restart();
	}



}
