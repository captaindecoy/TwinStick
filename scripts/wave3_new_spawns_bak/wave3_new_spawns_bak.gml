/// @description level1_spawns()
function wave3_new_spawns_bak(argument0) {
	time = argument0;
	if(mite_spawns > 0)
	{
		if(((time % (room_speed * 5) == 0) && mite_spawns > 0) || time == 1){
			spawn_mite_group(global.left_border + irandom(500), global.top_border + irandom(500), 4, 4);
			instance_create(global.left_border + irandom(500), global.top_border + irandom(500), obj_spikeyball);
			mite_spawns--;
		}
		/*
		if(((time % (room_speed * 4) == 0) && mite_spawns > 0)){
			//if(irandom(3) == 3)
			//{
				instance_create(global.left_border + irandom(500), global.top_border + irandom(500), )
			//}
		}
		*/
	}
	else //if(instance_number(obj_enemy_parent) == 0)
	{
		wave_spawning_done = true;
		//mite_spawns = 5; // setup for next wave
	}
	
	/*
	switch(time)
	{
		case 30:
	        spawn_mite_group(global.left_border + irandom(500), global.top_border + irandom(500), 4, 4);;
	        break;
	    case 90:
	        spawn_mite_group(global.left_border + irandom(500), global.top_border + irandom(500), 4, 4);;
	        break;
	    case 180:
	        spawn_mite_group(global.left_border + irandom(500), global.top_border + irandom(500), 4, 4);;
	        break;
	    case 210:
	        spawn_mite_group(global.left_border + irandom(500), global.top_border + irandom(500), 4, 4);;
			wave_spawning_done = true;
	        break;
	}
	*/
}
