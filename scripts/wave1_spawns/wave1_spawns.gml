/// @description level1_spawns()
function wave1_spawns(argument0) {
	time = argument0;
	switch(time)
	{
		case 30:
	        instance_create(224, 384, obj_baddie01);
	        break;
	    case 90:
	        instance_create(800, 384, obj_baddie01);
	        break;
	    case 180:
	        instance_create(512, 160, obj_baddie01);
	        break;
	    case 210:
	        instance_create(512, 608, obj_baddie01);
			wave_spawning_done = true;
	        break;
	}
}
