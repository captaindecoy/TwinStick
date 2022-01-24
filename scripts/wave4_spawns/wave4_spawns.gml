/// @description level1_spawns()
function wave4_spawns(argument0) {
	time = argument0;
	switch(time)
	{
		case 30:
	        create_enemy(224, 224, obj_baddie02);
			break;
		case 60:
			create_enemy(224, 384, obj_baddie02);
			break;
		case 90:
			create_enemy(224, 544, obj_baddie02);
	        break;
	    case 120:
	        create_enemy(800, 224, obj_baddie01);
			create_enemy(800, 384, obj_baddie01);
			create_enemy(800, 608, obj_baddie01);
			wave_spawning_done = true;
			break;
	}
}
