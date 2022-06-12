/// @description level1_spawns()
function wave1_new_spawns(time) {
	//time = argument0;
	if(/*time < (room_speed * 15) && */ mite_spawns > 0 /*&& baddie01_spawns > 0*/)
	{
		if(((time % (room_speed * 2) == 0) /*&& mite_spawns > 8*/) || time == 1){
			spawn_mite_group(global.left_border + irandom(700), global.top_border + irandom(500), irandom_range(3,5), irandom_range(3,5));
			mite_spawns--;
		}
		
		/* groups of 16 that spawn a little faster later
		if(((time % (room_speed * 5) == 0) && mite_spawns > 8) || time == 1){
			spawn_mite_group(global.left_border + irandom(500), global.top_border + irandom(500), 4, 4);
			mite_spawns--;
		}
		
		else if((time % (room_speed * 3.25) == 0) && mite_spawns <= 8) {
			spawn_mite_group(global.left_border + irandom(500), global.top_border + irandom(500), 4, 4);
			mite_spawns--;
		}
		*/
	}
	else
	{
		wave_spawning_done = true;
		mite_spawns = 5; // setup for next wave
	}
}
