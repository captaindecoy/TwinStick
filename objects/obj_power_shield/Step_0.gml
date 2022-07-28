/// @description Insert description here
// You can write your code in this editor
event_inherited();
if(place_meeting(x, y, obj_player))
{
	if(instance_number(obj_shield) == 0)
	{
		instance_create_layer(obj_player.x, obj_player.y, "Instances",obj_shield);
		instance_destroy();
	}
}

/*
timer--;
if(timer <= 0)
{
	instance_destroy();
}
*/