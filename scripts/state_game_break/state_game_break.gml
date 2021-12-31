// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function state_game_break(){
	/*if(wave_break_timer > room_speed * 5)
	{
		wave_break_text = "WAVE 1";
	}
	else */if(wave_break_timer < room_speed * 5)
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