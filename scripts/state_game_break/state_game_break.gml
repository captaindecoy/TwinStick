// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function state_game_break(){
	/*if(wave_break_timer > room_speed * 5)
	{
		wave_break_text = "WAVE 1";
	}*/
	if(/*obj_player.current_health <= 0 || */gamepad_button_check_pressed(0, gp_select))
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
	//else */
	if(room == rm_testing)
	{
		ds_stack_pop(state);
		ds_stack_push(state, state_game_playing);
	}
	else if(gamepad_button_check_pressed(0, gp_face1) || keyboard_check_pressed(vk_space))
	{
		ds_stack_pop(state);
		ds_stack_push(state, state_game_playing);
		wave_break_timer = room_speed * 7;
	}/*
	else if(wave_count != 1)
	{
		if(wave_break_timer < room_speed * 5)
		{
			//wave_break_text = 5;
			wave_break_text = wave_break_timer div room_speed;
		}
		wave_break_timer--;
		if(wave_break_timer <= 0)
		{
			ds_stack_pop(state);
			ds_stack_push(state, state_game_playing);
			wave_break_timer = room_speed * 7;
			//wave_break_text = "WAVE " + string();
		}
	}
	else if(wave_count == 1 && gamepad_button_check_pressed(0, gp_face1))
	{
		ds_stack_pop(state);
		ds_stack_push(state, state_game_playing);
		wave_break_timer = room_speed * 7;
	}*/
}