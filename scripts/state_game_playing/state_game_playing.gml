function state_game_playing() {
	game_timer++;
	wave_timer++;

	if(obj_player.current_health <= 0 || gamepad_button_check_pressed(0, gp_select))
	{
	    game_restart();
	}

	if(gamepad_button_check_pressed(0, gp_start) && ds_stack_top(obj_player.state) == state_player)
	{
	    with(obj_actor_parent)
	    {
	        ds_stack_push(state, state_idle);
	    }
	    ds_stack_push(state, state_game_paused);  
	}
	
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
		surround_four_baddie02();
		wave_spawning_done = true;
	}
	else if(wave_count % 2 == 0 && wave_spawning_done == false)
	{
		surround_four_baddie01();
		wave_spawning_done = true;
	}
	else if(wave_spawning_done == false)//if(wave_count == 1)
	{
		wave1_spawns(wave_timer);
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
	
	if(wave_spawning_done == true && instance_number(obj_enemy_parent) == 0)
	{
		
		wave_spawning_done = false;
		wave_timer = 0;
		wave_count++;
		wave_break_text = "WAVE " + string(wave_count);
		current_wave = wave_break_text;
		
		ds_stack_pop(state);
		if(wave_count == 2)
		{
			ds_stack_push(state, state_game_upgrades);
		}
		else
		{
			ds_stack_push(state, state_game_break);
		}
	}

	/*
	if(game_timer mod (room_speed * 10) == 0)
	{
	    if(timer_update > 0)
	    {
	        timer_update -= 10;
	    }
	    else
	    {
	        timer_update = 0;
	    }
	}

	if(timer1 > 0)
	{
	    timer1--;
	}
	else
	{
	    if(spawn_locationX == -100)
	    {
	        spawn_locationX = irandom_range(32, room_width - 32);
	        spawn_locationY = irandom_range(32, room_height - 32);
	    }
	    if(spawn_timer > 0)
	    {
	        spawn_timer--;
	    }
	    else
	    {
	        instance_create(spawn_locationX, spawn_locationY, obj_baddie01);
	        spawn_locationX = -100;
	        spawn_locationY = -100;
	        timer1 = timer_update;
	        spawn_timer = 60; // faster spawn if using timer_update 
	    }
	}
	*/




}
