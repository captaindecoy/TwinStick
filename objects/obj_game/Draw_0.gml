draw_set_color(c_red);

if(ds_stack_top(state) == state_game_break)
{
	draw_set_font(fnt_arial_big_wave);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(room_width / 2, room_height / 2, wave_break_text);
	if(wave_count == 1)
	{
		draw_set_font(fnt_arial_default);
		draw_text(room_width / 2, room_height / 2 + 128, "Press X to begin.");
	}
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(fnt_arial_default);
}


draw_text(global.left_border, 76, "HP " + string(obj_player.current_health) + "/" + string(obj_player.max_health));
draw_rectangle(160, 82, 160 + (32 * obj_player.max_health), 90, true);
draw_rectangle(160, 82, 160 + (32 * obj_player.current_health), 90, false);
draw_text(room_width / 2, 76, current_wave)
draw_text(room_width / 2 - 128, 76, "Speed = " + string(obj_player.movespeed));
draw_text(room_width / 2 + 64 , 76, "Wave Timer: " + string(wave_timer/room_speed));
//draw_rectangle(room_width / 2 + 300, 82, global.right_border - 1, 90, true);
//draw_rectangle(room_width / 2 + 300, 82, (global.right_border - room_width / 2 + 300) * ((obj_player.power_rate_timer / obj_player.power_rate)), 90, false);
draw_rectangle(global.right_border - 80, 82, global.right_border, 90, true);
draw_rectangle(global.right_border - 80, 82, (global.right_border - 80) + 80*(obj_player.power_rate_timer / obj_player.power_rate), 90, false);
/*
for(i = 0; i < mite_spawns; i++)
{
	draw_sprite(spr_mite, 0, global.left_border + (i * 32) + 16, global.bottom_border + 16);
}
*/
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

if(ds_stack_top(state) == state_game_upgrades)
{
	draw_set_font(fnt_arial_big_wave);
	draw_set_halign(fa_center);
	//draw_set_valign(fa_center);
	draw_text_transformed(room_width / 2, global.top_border, "CHOOSE AN UPGRADE", .5, .5, 0);
	draw_set_halign(fa_left);
	//draw_set_valign(fa_top);
	draw_set_font(fnt_arial_default);
	/*
	draw_rectangle(global.left_border + 8, global.top_border + 128, room_width /2 - 16, global.bottom_border - 128, true);
	draw_text(global.left_border + 8, global.top_border + 128, "+1 HP FOR PLAYER");
	
	draw_rectangle(room_width /2 + 16, global.top_border + 128, global.right_border - 8, global.bottom_border - 128, true);
	draw_text(room_width /2 + 16, global.top_border + 128, "PLAYER MOVEMENT 50% FASTER");
	*/
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
