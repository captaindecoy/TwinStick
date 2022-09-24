/*
draw_self();
draw_set_color(c_aqua);
draw_rectangle(x, y - sprite_height, x + (hp*6), y + 2 - sprite_height, false);
*/
/*
if(ds_stack_top(state) == active_state)
{
	draw_self();
	draw_set_color(c_aqua);
	draw_rectangle(x - sprite_width / 2, y - sprite_height, x - sprite_width / 2 + (hp*health_segment), y + 2 - sprite_height, false);
}
*/
if(ds_stack_top(state) == active_state)
{
	draw_self();
	draw_sprite_ext(spr_baddie02, 1, x, y, 1.2, 1.2, dir, c_white, 1);
	draw_set_color(c_lime);
	draw_rectangle(x - sprite_width / 2, y - sprite_height, x - sprite_width / 2 + (hp*health_segment), y + 2 - sprite_height, false);
	draw_set_color(c_red);
}
else if(ds_stack_top(state) == state_baddie_spawn)
{
	draw_circle_color(x, y, spawn_timer, c_lime, c_lime, true);	
}