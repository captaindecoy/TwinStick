/// @description state_game_paused
function state_game_paused() {

	if(gamepad_button_check_pressed(0, gp_start) && ds_stack_top(obj_player.state) == state_idle)
	{
	    with(obj_actor_parent)
	    {
	        ds_stack_pop(state);
	    }/*
	    with(obj_enemy_parent)
	    {
	        ds_stack_push(state, state_idle);
	    }*/   
	    ds_stack_pop(state);
	}
	
	if(obj_player.current_health <= 0 || gamepad_button_check_pressed(0, gp_select))
	{
	    game_restart();
	}


}
