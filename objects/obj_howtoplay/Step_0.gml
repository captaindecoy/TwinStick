/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1))
{
	room_goto(rm_title);	
}

if(blink_timer > 0)
{
	blink_timer--;	
}
else
{
	blink_timer = room_speed / 4;
	if(message4 == "")
	{
		message4 = "Press X button or spacebar to continue.";
	}
	else
	{
		message4 = "";
	}
}