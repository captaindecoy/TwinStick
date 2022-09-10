/// @description level1_spawns()
function wave5_new_spawns(time) {
	/*
	if(evac_timer == 0)
	{
		room_goto(rm_win_screen);	
	}
	*/
	//time = argument0;
	if(((time % (room_speed * .5) == 0) || time == 1) && time < (room_speed * 10))
	{
		instance_create_layer(global.left_border + irandom(700), global.top_border + irandom(500), "Instances",obj_ooze);
		//instance_create_layer(global.left_border + irandom(700), global.top_border + irandom(500), "Instances",obj_baddie01);
		//spawn_mite_group(global.left_border + irandom(700), global.top_border + irandom(500), irandom_range(3,5), irandom_range(3,5));
	}
	if(((time % (room_speed * 2) == 0)) && time > (room_speed * 5) && time < (room_speed * 7))
	{
		//spawn_mite_group(global.left_border + irandom(700), global.top_border + irandom(500), irandom_range(3,5), irandom_range(3,5));
		
		instance_create_layer(global.left_border + irandom(700), global.top_border + irandom(500), "Instances",obj_baddie02);
		
	}
	
	if(((time % (room_speed * 3) == 0)) && time > (room_speed * 12))
	{
		spawn_mite_group(global.left_border + irandom(700), global.top_border + irandom(500), irandom_range(3,5), irandom_range(3,5));
		
		//instance_create_layer(global.left_border + irandom(700), global.top_border + irandom(500), "Instances",obj_baddie02);
		
	}
	
	if(time == (room_speed * 10))
	{
		//spawn_mite_group(global.left_border + irandom(700), global.top_border + irandom(500), irandom_range(3,5), irandom_range(3,5));
		
		instance_create_layer(global.left_border + irandom(700), global.top_border + irandom(500), "Instances", obj_spikeyboss);
		
	}
	
	
	
	if((time % (room_speed * 15) == 0))
	{
		spawn_powerups(2);
		/*
		chance = irandom(3);
		if(chance == 0)
		{
			instance_create_layer(global.left_border + 16 + irandom(700), global.top_border + 16 + irandom(500), "Instances",obj_power_spread);
		}
		else if(chance == 1)
		{
			instance_create_layer(global.left_border + 16 + irandom(700), global.top_border + 16 + irandom(500),"Instances", obj_power_pierce);
		}
		else if(chance == 2)
		{
			instance_create_layer(global.left_border + 16 + irandom(700), global.top_border + 16 + irandom(500), "Instances",obj_power_explosive);
		}
		else if(chance == 3)
		{
			instance_create_layer(global.left_border + 16 + irandom(700), global.top_border + 16 + irandom(500), "Instances",obj_power_shield);
		}*/
		//instance_create_layer(global.left_border + 16 + irandom(700), global.top_border + 16 + irandom(500), "Instances",obj_big_gem);
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