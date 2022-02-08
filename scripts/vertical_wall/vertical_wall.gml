// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vertical_wall(){
	for(var i = 0; i < 15; i++)
	{
		create_enemy(320, 160 + (32 * i), obj_wall);
	}
}