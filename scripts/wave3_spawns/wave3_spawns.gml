/// @description level1_spawns()
function wave3_spawns(argument0) {
	time = argument0;
	switch(time)
	{
		case 30:
	        create_enemy(224, 384, obj_baddie01);
	        break;
	    case 90:
	        create_enemy(800, 384, obj_baddie01);
	        break;
	    case 180:
	        create_enemy(512, 160, obj_baddie01);
	        break;
	    case 210:
	        create_enemy(512, 608, obj_baddie01);
			wave_spawning_done = true;
	        break;
	}
}
