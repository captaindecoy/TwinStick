function state_game() {
	game_timer++;

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

	level1_spawns(game_timer);
	
	if(game_timer == room_speed * 10)
	{
		surround_four_baddie01();	
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
