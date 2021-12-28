/// @description level1_spawns()
function level1_spawns(argument0) {
	time = argument0;
	switch(time)
	{
	    case 30:
	        instance_create(220, 220, obj_baddie02);
	        break;
	    case 60:
	        instance_create(400, 440, obj_baddie02);
	        break;
	    case 90:
	        instance_create(300, 100, obj_baddie01);
	        break;
	    case 120:
	        instance_create(100, 300, obj_baddie01);
	        break;
	    case 150:
	        instance_create(260, 260, obj_baddie01);
	        break;
	    case 180:
	        instance_create(120, 120, obj_baddie01);
	        break;
	}



}
