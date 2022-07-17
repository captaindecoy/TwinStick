function state_game_playing() {
	game_timer++;
	wave_timer++;
	if(evac_timer > 0)
	{
		evac_timer--;
	}
	else if(evac_portal_spawned == false)
	{
		instance_create(global.left_border + irandom(700), global.top_border + irandom(500), obj_evac_portal);
		evac_portal_spawned = true;
	}

	if(/*obj_player.current_health <= 0 || */gamepad_button_check_pressed(0, gp_select))
	{
	    game_restart();
	}

	if(gamepad_button_check_pressed(0, gp_start) && ds_stack_top(obj_player.state) == state_player)
	{
		//part_system_automatic_update(global.P_System, false);
	    with(obj_actor_parent)
	    {
	        ds_stack_push(state, state_idle);
	    }
	    ds_stack_push(state, state_game_paused);  
	}
	
	if(instance_number(obj_player) == 0)
	{
		room_restart();
	}
	
	if(room == rm_playing)
	{
		if(wave_count % 5 == 0 && wave_spawning_done == false)
		{
			level1_spawns(wave_timer);
			//wave_spawning_done = true;
		}
		else if(wave_count % 4 == 0 && wave_spawning_done == false)
		{
			wave4_spawns(wave_timer);	
			//wave_spawning_done = true;
		}
		else if(wave_count % 3 == 0 && wave_spawning_done == false)
		{
			wave3_new_spawns(wave_timer);
			//surround_four_baddie02();
			//wave_spawning_done = true;
		}
		else if(wave_count % 2 == 0 && wave_spawning_done == false)
		{
			//surround_four_baddie01();
			wave2_new_spawns(wave_timer);
			//wave_spawning_done = true;
		}
		else if(wave_spawning_done == false)//if(wave_count == 1)
		{
			wave1_new_spawns(wave_timer);
			//wave_spawning_done = true;
		}
	
		/*
		level1_spawns(wave_timer);
	
		if(wave_timer == room_speed * 15)
		{
			surround_four_baddie01();	
			wave_spawning_done = true;
			return 0;
		}
		*/
	
		if(wave_spawning_done == true /*&& instance_number(obj_enemy_parent) == 0 || (wave_spawning_done == true && wave_count == 1)*/)
		{
		
			wave_spawning_done = false;
			wave_timer = 0;
			evac_timer = room_speed * 60;
			evac_portal_spawned = false;
			/*
			wave_count++;
			wave_break_text = "WAVE " + string(wave_count);
			current_wave = wave_break_text;
			*/
			ds_stack_pop(state);
			if(wave_count % 3 == 0 && ds_list_size(upgrade_list) > 0 && enable_powerups == true)
			{
				ds_stack_push(state, state_game_upgrades);
				// player upgrade options setup
				if(ds_list_size(upgrade_list) > 1)
				{	
					ds_list_shuffle(upgrade_list);
					upgrade1_obj = upgrade_list[|0];
					ds_list_delete(upgrade_list, 0);
					ds_list_shuffle(upgrade_list);
					upgrade2_obj = upgrade_list[|0];
					ds_list_delete(upgrade_list, 0);
				
					upgrade1 = instance_create(global.upgrade1_x, global.upgrade1_y, upgrade1_obj);
					//upgrade1 = instance_create(global.upgrade1_x, global.upgrade1_y, obj_upgrade_speed);
					upgrade1.button = gp_shoulderl;
					upgrade2 = instance_create(global.upgrade2_x, global.upgrade2_y, upgrade2_obj);
					upgrade2.button = gp_shoulderr;
				
					//enemy_upgrade1 = instance_create(global.enemy_upgrade1_x, global.enemy_upgrade1_y, obj_enemy_upgrade_bug_hp);
				}
				else
				{
					upgrade1_obj = upgrade_list[|0];
					upgrade2_obj = noone;
					ds_list_delete(upgrade_list, 0);
					upgrade1 = instance_create(global.upgrade1_x, global.upgrade1_y, upgrade1_obj);
					//upgrade1 = instance_create(global.upgrade1_x, global.upgrade1_y, obj_upgrade_speed);
				}
			
				// enemy upgrade options setup
				if(ds_list_size(enemy_upgrade_list) > 1)
				{	
					ds_list_shuffle(enemy_upgrade_list);
					enemy_upgrade1_obj = enemy_upgrade_list[|0];
					ds_list_delete(enemy_upgrade_list, 0);
					ds_list_shuffle(enemy_upgrade_list);
					enemy_upgrade2_obj = enemy_upgrade_list[|0];
					ds_list_delete(enemy_upgrade_list, 0);
				
					enemy_upgrade1 = instance_create(global.enemy_upgrade1_x, global.enemy_upgrade1_y, enemy_upgrade1_obj);
					//upgrade1 = instance_create(global.upgrade1_x, global.upgrade1_y, obj_upgrade_speed);
					enemy_upgrade1.button = gp_shoulderl;
					enemy_upgrade2 = instance_create(global.enemy_upgrade2_x, global.enemy_upgrade2_y, enemy_upgrade2_obj);
					enemy_upgrade2.button = gp_shoulderr;
				
				
				}
				else
				{
					enemy_upgrade1_obj = enemy_upgrade_list[|0];
					enemy_upgrade2_obj = noone;
					ds_list_delete(enemy_upgrade_list, 0);
					enemy_upgrade1 = instance_create(global.enemy_upgrade1_x, global.enemy_upgrade1_y, enemy_upgrade1_obj);
					//upgrade1 = instance_create(global.upgrade1_x, global.upgrade1_y, obj_upgrade_speed);
				}
			}
			else
			{
				ds_stack_push(state, state_game_break);
			}
			wave_count++;
			wave_break_text = "WAVE " + string(wave_count);
			current_wave = wave_break_text;
			if(heal_after_wave == true && obj_player.max_health != obj_player.current_health)
			{
					obj_player.current_health++;
			}
		}
	}
}
