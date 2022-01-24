/// @description level1_spawns()
function level1_spawns(argument0) {
	time = argument0;
	switch(time)
	{
	    case 90:
		case 400:
	        create_enemy(224, 224, obj_baddie02);
	        break;
	    case 130:
		case 430:
	        create_enemy(800, 224, obj_baddie02);
	        break;
	    case 170:
		case 460:
	        create_enemy(800, 544, obj_baddie02);
	        break;
	    case 210:
		case 490:
	        create_enemy(224, 544, obj_baddie02);
	        break;
	    case 250:
	        create_enemy(800, 608, obj_baddie01);
	        break;
	    case 290:
	        create_enemy(224, 608, obj_baddie01);
	        break;
		case 330:
	        create_enemy(224, 160, obj_baddie01);
	        break;
	    case 370:
	        create_enemy(800, 160, obj_baddie01);
			wave_spawning_done = true;
	        break;
	}
}
