/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_anykey) || gamepad_button_check_pressed(0, gp_face1))
{
	room_goto(rm_title);	
}