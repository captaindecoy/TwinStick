/// @description level1_spawns()
function wave4_spawns(argument0) {
	time = argument0;
	switch(time)
	{
		case 30:
	        instance_create(224, 224, obj_baddie02);
			break;
		case 60:
			instance_create(224, 384, obj_baddie02);
			break;
		case 90:
			instance_create(224, 544, obj_baddie02);
	        break;
	    case 120:
	        instance_create(800, 224, obj_baddie01);
			instance_create(800, 384, obj_baddie01);
			instance_create(800, 608, obj_baddie01);
			wave_spawning_done = true;
			break;
	}
}
