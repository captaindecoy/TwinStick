/// @description Insert description here
// You can write your code in this editor

//if(button != "")
//{
	if(selected == true)
	{
		obj_player.bullet_damage += 1;
		ds_stack_pop(obj_game.state);
		ds_stack_push(obj_game.state, state_game_break);
		with(obj_parent_upgrade)
		{
			instance_destroy();
		}
	}
//}