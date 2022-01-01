draw_set_color(c_red);

if(ds_stack_top(state) == state_game_break)
{
	draw_set_font(fnt_arial_big_wave);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(room_width / 2, room_height / 2, wave_break_text);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(fnt_arial_default);
}


draw_text(global.left_border, 76, "HP " + string(obj_player.current_health) + "/" + string(obj_player.max_health));
draw_rectangle(160, 82, 160 + (32 * obj_player.max_health), 90, true);
draw_rectangle(160, 82, 160 + (32 * obj_player.current_health), 90, false);
draw_text(room_width / 2, 76, current_wave);

if(ds_stack_top(state) == state_game_paused)
{
	draw_set_font(fnt_arial_big_wave);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(room_width / 2, room_height / 2, "PAUSED");
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(fnt_arial_default);
}

//draw_rectangle(global.left_border, global.top_border, global.right_border, global.bottom_border, true);

/*
draw_set_color(c_lime);
if(spawn_timer > 0 && timer1 == 0)
{
    draw_circle(spawn_locationX, spawn_locationY, spawn_timer, true);
}
*/
/* */
/*  */
