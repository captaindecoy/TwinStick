// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function state_game_upgrades(){
	//left_upgrade = "health";
	//right_upgrade = "speed";
	if(gamepad_button_check_pressed(0, gp_shoulderl))
	{
		obj_player.max_health++;
		obj_player.current_health++;
		ds_stack_pop(state);
		ds_stack_push(state, state_game_break);
	}
	if(gamepad_button_check_pressed(0, gp_shoulderr))
	{
		obj_player.movespeed = 6;
		ds_stack_pop(state);
		ds_stack_push(state, state_game_break);
	}
}