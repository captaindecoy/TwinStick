// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_powerups(amount){
	for(i = 0; i < amount; i++)
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
}