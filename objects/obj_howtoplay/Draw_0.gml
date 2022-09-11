/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_red);
draw_set_font(fnt_arial_big_wave);
draw_set_halign(fa_center);
//draw_text(room_width / 2, 200, title);
draw_text_ext_transformed(room_width / 2, 120, title, 2, 10000, .4, .4, 0);
draw_text_ext_transformed(room_width / 2, 200, message1, 2, 10000, .2, .2, 0);
draw_text_ext_transformed(room_width / 2, 224, message2, 2, 10000, .2, .2, 0);
draw_text_ext_transformed(room_width / 2, 248, message3, 2, 10000, .2, .2, 0);
//draw_text_ext_transformed(room_width / 2, 500, options[0], 2, 10000, .3, .3, 0);
//draw_text_ext_transformed(room_width / 2, 550, options[1], 2, 10000, .3, .3, 0);
//draw_text_ext_transformed(room_width / 2, 450, options[2], 2, 10000, .3, .3, 0);

/*
if(cursor == 0)
{
	draw_text_ext_transformed(room_width / 6, 500, ">", 2, 10000, .3, .3, 0);		
}
else if(cursor == 1)
{
	draw_text_ext_transformed(room_width / 6, 550, ">", 2, 10000, .3, .3, 0);		
}

else if(cursor == 2)
{
	draw_text_ext_transformed(room_width / 4, 450, ">", 2, 10000, .3, .3, 0);		
}

*/