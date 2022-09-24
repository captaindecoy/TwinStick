if(ds_stack_top(state) == active_state)
{
	draw_self();
	draw_set_color(c_lime);
	draw_text(x, y - sprite_height - 16, string(hp));
	draw_rectangle(x - sprite_width / 2, y - sprite_height, x - sprite_width / 2 + (health_segment * hp), y - sprite_height + 2 , false);
	draw_set_color(c_red);
}
else if(ds_stack_top(state) == state_baddie_spawn)
{
	draw_circle_color(x, y, spawn_timer, c_lime, c_lime, true);	
}