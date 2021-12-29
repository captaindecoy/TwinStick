/// @description level1_spawns()
function level1_spawns(argument0) {
	time = argument0;
	switch(time)
	{
	    case 60:
	        instance_create(256, 128, obj_baddie02);
	        break;
	    case 90:
	        instance_create(768, 128, obj_baddie02);
	        break;
	    case 120:
	        instance_create(768, 640, obj_baddie02);
	        break;
	    case 150:
	        instance_create(256, 640, obj_baddie02);
	        break;
	    case 210:
	        instance_create(992, 736, obj_baddie01);
	        break;
	    case 240:
	        instance_create(64, 736, obj_baddie01);
	        break;
		case 270:
	        instance_create(64, 64, obj_baddie01);
	        break;
	    case 300:
	        instance_create(960, 64, obj_baddie01);
	        break;
	}
}
