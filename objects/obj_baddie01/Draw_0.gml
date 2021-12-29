if(ds_stack_top(state) == active_state)
{
	draw_self();
	draw_set_color(c_lime);
	draw_rectangle(x, y - sprite_height, x + (hp*6), y + 2 - sprite_height, false);
}
else if(ds_stack_top(state) == state_baddie_spawn)
{
	draw_circle_color(x, y, spawn_timer, c_lime, c_lime, true);	
}
