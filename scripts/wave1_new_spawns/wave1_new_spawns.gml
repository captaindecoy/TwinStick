/// @description level1_spawns()
function wave1_new_spawns(time) {
	//time = argument0;
	if(((time % (room_speed) == 0)) || time == 1)
	{
		instance_create_layer(global.left_border + 16 + irandom(700), global.top_border + 16 + irandom(500), "Instances",obj_ooze);
	}
	if(((time % (room_speed * 4) == 0)) && time > (room_speed * 20))
	{
		spawn_mite_group(global.left_border + irandom(700), global.top_border + irandom(500), irandom_range(3,5), irandom_range(3,5));
		//instance_create_layer(200, 200, "Instances" , obj_spikeyball);
	}
	
	if((time % (room_speed * 15) == 0))
	{
		for(i = 0; i < 2; i++)
		{
			chance = irandom(4);
			if(chance == 0)
			{
				instance_create_layer(global.left_border + 16 + irandom(700), global.top_border + 16 + irandom(500), "Instances",obj_power_spread);
			}
			else if(chance == 1)
			{
				instance_create_layer(global.left_border + 16 + irandom(700), global.top_border + 16 + irandom(500), "Instances",obj_power_pierce);
			}
			else if(chance == 2)
			{
				instance_create_layer(global.left_border + 16 + irandom(700), global.top_border + 16 + irandom(500), "Instances",obj_power_explosive);
			}
			else if(chance == 3)
			{
				instance_create_layer(global.left_border + 16 + irandom(700), global.top_border + 16 + irandom(500), "Instances",obj_power_shield);
			}
			else if(chance == 4)
			{
				instance_create_layer(global.left_border + 16 + irandom(700), global.top_border + 16 + irandom(500), "Instances",obj_power_hp);
			}
		}
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