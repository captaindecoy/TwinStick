/// @description Insert description here
// You can write your code in this editor
if(destroy == false)
{
	draw_self();
	draw_sprite_ext(spr_evac_portal, 0, x, y, image_xscale, image_yscale, image_angle+45, c_white, .2);
}
else
{
	draw_set_color(c_red);
	draw_rectangle(0, 0, room_width, room_height, false);	
}