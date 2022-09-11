/// @description level1_spawns()
function wave4_new_spawns(time) {
	//time = argument0;
	if(time == 1)
	{
		for(i = 0; i < 22; i++)
		{
			instance_create_layer(global.left_border + (40 * i), global.top_border, "Instances",obj_ooze);
			instance_create_layer(global.left_border + (40 * i), global.bottom_border, "Instances",obj_ooze);
		}
	}
	if(((time % (room_speed * 4) == 0)) && time > (room_speed * 3))
	{
		horizontal_inst = instance_create_layer(irandom_range(global.left_border + 32, global.right_border), irandom_range(global.top_border + 50, global.bottom_border - 50), "Instances", obj_bouncer);
		horizontal_inst.dir = 0;
		horizontal_inst.image_angle += 90;
	}
	
	if(((time % (room_speed * 4) == 0)) && time > (room_speed * 20))
	{
		spawn_mite_group(global.left_border + irandom(700), global.top_border + irandom(500), irandom_range(3,5), irandom_range(3,5));
	}
	
	if((time % (room_speed * 15) == 0))
	{
		spawn_powerups(2);
	}
}