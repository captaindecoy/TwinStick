/// @description level1_spawns()
function wave1_new_spawns(argument0) {
	time = argument0;
	//spawn_mite_group(global.left_border + irandom(500), global.top_border + irandom(500), 4, 4);
	//wave_spawning_done = true;
	if(/*time < (room_speed * 15) && */ mite_spawns > 0)
	{
		//if(irandom(60) == 1)
		//{
		if((time % (room_speed * 5) == 0) || time == 1){
			spawn_mite_group(global.left_border + irandom(500), global.top_border + irandom(500), 4, 4);
			mite_spawns--;
		}
		//}
		//else if(irandom(80) == 1)
		//{
		//	instance_create(global.left_border + irandom(500), global.top_border + irandom(500), obj_baddie01);
		//}
	}
	else
	{
		wave_spawning_done = true;	
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
