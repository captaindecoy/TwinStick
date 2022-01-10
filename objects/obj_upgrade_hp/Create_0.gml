/// @description Insert description here
// You can write your code in this editor
description = "Increase maximum HP +1.\nIf you are missing HP, this will heal 1HP.";
button = "";
x2 = 0;
y2 = 0;
selected = false;

if(x == global.upgrade1_x)
{
	x2 = room_width /2 - 16;
}
else
{
	x2 = global.right_border - 32;
}

if(y == global.upgrade1_y)
{
	y2 = room_width /2 - 16;
}
else
{
	y2 = global.bottom_border - 128;
}

//global.right_border - 8, global.bottom_border - 128
//could check against button, does it really matter?