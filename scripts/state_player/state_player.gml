/// @description state_player
function state_player() {
	if(mouse_x != mouse_x_prev || mouse_y != mouse_y_prev || mouse_check_button(mb_left))
	{
		mouse_active = true;	
	}
	
	if(hurt_timer > 0)
	{
		hurt_timer--;	
	}
	else
	{
		hurt_timer = -1;
		image_index = 0;
		image_speed = 0;
	}
	
	/*
	if(image_speed == 1)
	{
	    image_speed = 0;
	}
	*/

	if(fire_rate_timer < fire_rate)
	{
	    fire_rate_timer++;
	}
	
	
	if(power_rate_timer > 0)
	{
		power_rate_timer--;	
	}
	
	else if(power_rate_timer <= 0)
	{
		fire_mode = 1;
		fire_rate = starting_fire_rate;
		bullet_piercing = false;
	}
	
	/*
	if(place_meeting(x, y, obj_power_spread))
	{
		fire_mode = 3;
		power_rate_timer = power_rate;
	}
	*/
	
	/*
	if(keyboard_check_pressed(ord("P")) == true)
	{
		fire_mode = 3;
		power_rate_timer = power_rate;
	}
	*/
	
	var lhaxis = gamepad_axis_value(0, gp_axislh);
	var lvaxis = gamepad_axis_value(0, gp_axislv);
	ldir = point_direction(0, 0, lhaxis, lvaxis);

	//show_debug_message("lhaxis = " + string(lhaxis));
	//show_debug_message("lvaxis = " + string(lvaxis));
	//show_debug_message("ldir = " + string(ldir));

	//var rhaxis = gamepad_axis_value(0, gp_axisrh);
	//var rvaxis = gamepad_axis_value(0, gp_axisrv);
	rhaxis = gamepad_axis_value(0, gp_axisrh);
	rvaxis = gamepad_axis_value(0, gp_axisrv);
	rdir = point_direction(0, 0, rhaxis, rvaxis);

	if(abs(rhaxis) > analog_deadzone || abs(rvaxis) > analog_deadzone)
	{
	    image_angle = rdir;
		mouse_active = false;
		//obj_crosshair.x = x + lengthdir_x(128,image_angle);
		//obj_crosshair.y = y + lengthdir_y(128,image_angle);
		//obj_crosshair.x = x + lengthdir_x(32,rdir);
		//obj_crosshair.y = y + lengthdir_y(32,rdir);
	}
	
	if(mouse_active)
	{
		rdir = point_direction(x, y, mouse_x, mouse_y);
		image_angle = rdir;
		obj_crosshair.x = mouse_x;
		obj_crosshair.y = mouse_y;
	}
	else
	{
		obj_crosshair.x = x + lengthdir_x(128,image_angle);
		obj_crosshair.y = y + lengthdir_y(128,image_angle);
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
	else
	{
		dx = 0;
		dy = 0;
		
		if(keyboard_check(ord("D")))
		{
			dx += (lengthdir_x(1, 0)) * movespeed;
		}
		if(keyboard_check(ord("W")))
		{
			dy += (lengthdir_y(1, 90)) * movespeed;
		}
		if(keyboard_check(ord("A")))
		{
			dx += (lengthdir_x(1, 180)) * movespeed;
		}
		if(keyboard_check(ord("S")))
		{
			dy += (lengthdir_y(1, 270)) * movespeed;
		}
		//handle diagonals by setting, not adding
		if(keyboard_check(ord("D")) && keyboard_check(ord("W")))
		{
			dx = (lengthdir_x(1, 45)) * movespeed;
			dy = (lengthdir_y(1, 45)) * movespeed;
		}
		if(keyboard_check(ord("W")) && keyboard_check(ord("A")))
		{
			dx = (lengthdir_x(1, 135)) * movespeed;
			dy = (lengthdir_y(1, 135)) * movespeed;
		}
		if(keyboard_check(ord("A")) && keyboard_check(ord("S")))
		{
			dx = (lengthdir_x(1, 225)) * movespeed;
			dy = (lengthdir_y(1, 225)) * movespeed;
		}
		if(keyboard_check(ord("S")) && keyboard_check(ord("D")))
		{
			dx = (lengthdir_x(1, 315)) * movespeed;
			dy = (lengthdir_y(1, 315)) * movespeed;
		}
		
		if((x + dx - sprite_width / 2) > 96 && (x + dx + sprite_width / 2) < room_width - 96)
	    {
	        x += dx;
	    }
	    if((y + dy - sprite_height / 2) > 96 && (y + dy + sprite_height / 2) < room_height-96)
	    {
	        y += dy;
	    }
		
	}

	if(((abs(rhaxis) > .5 || abs(rvaxis) > .5) || mouse_check_button(mb_left)) && fire_rate_timer >= fire_rate)
	{
	    switch(fire_mode)
	    {
	        case 1: // normal shot
				xspawn = x + lengthdir_x(sprite_width*.75, obj_player.rdir);
	            yspawn = y + lengthdir_y(sprite_height*.75, obj_player.rdir);
            
	            create_bullet(obj_projectile, xspawn, yspawn, 12, room_speed/2, obj_player.rdir);
			/*
	            bullet = instance_create_layer(x,y,"Instances",obj_projectile);
	            bullet.rhvalue = sign(gamepad_axis_value(0, gp_axisrh));
	            bullet.rvvalue = sign(gamepad_axis_value(0, gp_axisrv));
	            bullet.movespeed = 24;
	            bullet.dir = obj_player.rdir;
	            bullet.image_angle = bullet.dir;
	            bullet.timer = room_speed/2;
				*/
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
	            bullet = instance_create_layer(xspawn,yspawn,"Instances",obj_projectile);
	            bullet.rhvalue = sign(gamepad_axis_value(0, gp_axisrh));
	            bullet.rvvalue = sign(gamepad_axis_value(0, gp_axisrv));
	            bullet.movespeed = 12;
	            bullet.dir = obj_player.rdir;
	            bullet.image_angle = bullet.dir;
	            bullet.timer = room_speed/2;
	            */
	            fire_rate_timer = 0;
	            break;
	        case 3: //spread shot
	            create_bullet(obj_projectile, x, y, 12, room_speed/2, obj_player.rdir);
	            create_bullet(obj_projectile, x, y, 12, room_speed/2, obj_player.rdir - 20);
	            //create_bullet(obj_projectile, x, y, 12, room_speed/2, obj_player.rdir - 40);
	            create_bullet(obj_projectile, x, y, 12, room_speed/2, obj_player.rdir + 20);
	            //create_bullet(obj_projectile, x, y, 12, room_speed/2, obj_player.rdir + 40);
				audio_play_sound(snd_shot, 10, false);
	            fire_rate_timer = 0;
	            break;
			case 4:
				var _list = ds_list_create();
				//var _num = collision_line_list(x - 100, y, x + 100, y, obj_enemy_parent, false, true, _list, false);
				var _num = collision_line_list(x, y, x + lengthdir_x(64, obj_player.rdir), y + lengthdir_y(64, obj_player.rdir), obj_enemy_parent, false, true, _list, false);
				if _num > 0
				{
				    for (var i = 0; i < _num; ++i;)
				    {
				        //instance_destroy(_list[| i]);
						_list[| i].hp--;
				    }
				}
				ds_list_destroy(_list);
				fire_rate_timer = 0;
				break;
			case 5: // piercing shot
	            bullet = instance_create_layer(x + lengthdir_x(sprite_width*2, obj_player.rdir),
							y + lengthdir_y(sprite_height*2, obj_player.rdir),
							"Instances",
							obj_projectile);
	            bullet.rhvalue = sign(gamepad_axis_value(0, gp_axisrh));
	            bullet.rvvalue = sign(gamepad_axis_value(0, gp_axisrv));
	            bullet.movespeed = 12;
	            bullet.dir = obj_player.rdir;
	            bullet.image_angle = bullet.dir;
	            bullet.timer = room_speed/2;
				bullet.damage = 5;
				bullet.image_xscale *= 4;
				bullet.image_yscale *= 1.25;
				bullet.hp = 50000;
				//fire_rate = 24;
	            fire_rate_timer = 0;
	            audio_play_sound(snd_explosion1, 10, false);
	            break;
			case 6: // explosive shot
				bullet = instance_create_layer(x,y,"Instances",obj_projectile);
	            bullet.rhvalue = sign(gamepad_axis_value(0, gp_axisrh));
	            bullet.rvvalue = sign(gamepad_axis_value(0, gp_axisrv));
	            bullet.movespeed = 32;
				bullet.image_xscale *= .75;
				bullet.image_yscale *= 1.5;
	            bullet.dir = obj_player.rdir;
	            bullet.image_angle = bullet.dir;
	            bullet.timer = room_speed*4;
				bullet.damage = bullet_damage;
				bullet.explosive = true;
				fire_rate = 24;
	            fire_rate_timer = 0;
	            audio_play_sound(snd_shot, 10, false);
	            break;
	    }
	    muzzel_flash = true;
	}

	collider = instance_place(x, y, obj_enemy_parent)
	if(collider != noone && collider.active == true && hurt_timer == -1)
	{
		if(current_health > 0)
	    {
	        current_health--;
			if(collider.object_index != obj_ooze){
				hurt_direction = collider.image_angle;
			}
			else
			{
				hurt_direction = ldir - 180;	
			}
			hurt_timer = hurt_timer_rate;
			ds_stack_push(state, state_player_hurt);
	        image_speed = .5;
	    }
	    with(collider)
	    {
			hp -= obj_player.collision_damage;
	        //instance_destroy();
	    }    
	}
	
	power_collider = instance_place(x, y, obj_power_parent)
	if(power_collider != noone) //&& collider.active == true)
	{
		//show_debug_message(object_index(power_collider));
		if(variable_instance_exists(power_collider, "power_mode"))
		{
			fire_mode = power_collider.power_mode;
			power_rate_timer = power_rate;
		}
		if(variable_instance_exists(power_collider, "fire_rate"))
		{
			fire_rate = power_collider.fire_rate;
		}
		if(variable_instance_exists(power_collider, "plus_hp"))
		{
			//max_health += 14
			current_health += power_collider.plus_hp;
		}
		with(power_collider)
	    {
	        instance_destroy();
	    }
	    //fire_mode = power_collider.power_mode;
		//power_rate_timer = power_rate;
		//fire_rate = power_collider.fire_rate;
	}
	
	gem_collider = instance_place(x, y, obj_big_gem);
	if(gem_collider != noone)
	{
		if(power_rate_timer > 0)
		{
			power_rate_timer = power_rate;
			/*
			if(power_rate_timer + (room_speed * 3) < power_rate)
			{
				power_rate_timer += room_speed * 3;
			}
			else
			{
				power_rate_timer = power_rate;
			}
			*/
		}
		instance_destroy(gem_collider);
	}
	/*
	power_collider = instance_place(x, y, obj_power_pierce)
	if(power_collider != noone) //&& collider.active == true)
	{
		 with(power_collider)
	    {
	        instance_destroy();
	    }
	    //fire_mode = power_collider.power_mode;
		bullet_piercing = true;
		power_rate_timer = power_rate;
	}
	
	*/
	
	mouse_x_prev = mouse_x;
	mouse_y_prev = mouse_y;
	
	if(current_health <= 0)
	{
		instance_destroy();
	    //room_restart();
	}



}
