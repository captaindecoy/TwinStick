// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function state_baddie_spawn(){
	if(spawn_timer > 0)
	{
		spawn_timer--;	
	}
	else
	{
		ds_stack_pop(state);
		ds_stack_push(state, active_state);
	}
}