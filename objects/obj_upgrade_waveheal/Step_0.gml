/// @description Insert description here
// You can write your code in this editor

//if(button != "")
//{
	//if(gamepad_button_check_pressed(0, button) == true)
	if(selected == true)
	{
		obj_game.heal_after_wave = true;
		ds_stack_pop(obj_game.state);
		ds_stack_push(obj_game.state, state_game_break);
		with(obj_parent_upgrade)
		{
			instance_destroy();
		}
	}
//}