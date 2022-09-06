/// @description Insert description here
// You can write your code in this editor

vaxis = gamepad_axis_value(0, gp_axislv);

if(keyboard_check_pressed(ord("S")) || (vaxis > .2 && prev_vaxis < .2))
{
	if(cursor < (array_length(options) - 1))
	{
		cursor += 1;
	}
	else
	{
		cursor = 0;	
	}
}

if(keyboard_check_pressed(ord("W")) || (vaxis < -.2 && prev_vaxis > -.2))
{
	if(cursor != 0)
	{
		cursor -= 1;
	}
	else
	{
		cursor = 2;	
	}
}

if(keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1))
{
	if(cursor == 0)
	{
		room_goto_next();	
	}
	if(cursor == 2)
	{
		game_end();	
	}
}

prev_vaxis = vaxis;