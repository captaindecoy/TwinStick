/// @description level1_spawns()
function wave1_new_spawns(time) {
	//time = argument0;
	if(((time % (room_speed * 2) == 0)) || time == 1)
	{
		spawn_mite_group(global.left_border + irandom(700), global.top_border + irandom(500), irandom_range(3,5), irandom_range(3,5));
	}
	if(((time % (room_speed * 4) == 0)) && time > (room_speed * 30))
	{
		instance_create(global.left_border + irandom(700), global.top_border + irandom(500), obj_spikeyball);
	}
	
	if((time % (room_speed * 10) == 0))
	{
		if(irandom(1) == 0)
		{
			instance_create(global.left_border + 16 + irandom(700), global.top_border + 16 + irandom(500), obj_power_spread);
		}
		else
		{
			instance_create(global.left_border + 16 + irandom(700), global.top_border + 16 + irandom(500), obj_power_pierce);
		}
	}
}



// OLD CODE
/*
if(mite_spawns > 0)
{
	if(((time % (room_speed * 2) == 0)) || time == 1){
		spawn_mite_group(global.left_border + irandom(700), global.top_border + irandom(500), irandom_range(3,5), irandom_range(3,5));
		mite_spawns--;
	}
}
else
{
	wave_spawning_done = true;
	mite_spawns = 5; // setup for next wave
}
*/