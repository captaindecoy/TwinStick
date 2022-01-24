// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function state_game_upgrades(){
	//left_upgrade = "health";
	//right_upgrade = "speed";

	if(gamepad_button_check_pressed(0, gp_shoulderl))
	{
		upgrade1.selected = true;
		enemy_upgrade1.selected = true;
		if(upgrade2_obj != noone)
		{
			ds_list_add(upgrade_list, upgrade2_obj);
		}
		if(enemy_upgrade2 != noone)
		{
			ds_list_add(enemy_upgrade_list, enemy_upgrade2_obj);
		}
	}
	
	if(gamepad_button_check_pressed(0, gp_shoulderr) && upgrade2_obj != noone)
	{
		upgrade2.selected = true;
		enemy_upgrade2.selected = true;
		//if(upgrade1_obj)
		//{
			ds_list_add(upgrade_list, upgrade1_obj);
			ds_list_add(enemy_upgrade_list, enemy_upgrade1_obj);
		//}
	}
	
}