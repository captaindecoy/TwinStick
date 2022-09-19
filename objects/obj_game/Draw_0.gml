draw_set_color(c_red);

if(ds_stack_top(state) == state_game_break)
{
	draw_set_font(fnt_arial_big_wave);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(room_width / 2, room_height / 2, wave_break_text);
	draw_set_font(fnt_arial_default);
	draw_text(room_width / 2, room_height / 2 + 96, "Deaths: " + string(global.death_count));
	//if(wave_count == 1)
	//{
		//draw_set_font(fnt_arial_default);
		draw_text(room_width / 2, room_height / 2 + 128, "Press X button or Spacebar to begin.");
	//}
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(fnt_arial_default);
}

draw_set_color(c_black);
draw_rectangle(global.left_border, 48, global.right_border, global.top_border - 6, false);
draw_set_color(c_red);
draw_rectangle(global.left_border, 48, global.right_border, global.top_border - 6, true);
if(instance_number(obj_player) > 0) // TODO: I don't like this (here in draw event)
{
	draw_text(global.left_border + 4, 63, "HP " + string(obj_player.current_health)); //+ "/" + string(obj_player.max_health));
	//draw_rectangle(160, 82, 160 + (32 * obj_player.max_health), 90, true);
	draw_rectangle(160, 63, 160 + (16 * obj_player.current_health), global.top_border - 10, false);
	draw_rectangle(global.right_border - 80, 63, (global.right_border - 80) + 80*(obj_player.power_rate_timer / obj_player.power_rate), global.top_border - 10, false);
}
draw_text(room_width / 3, 63, current_wave)
//draw_text(room_width / 2 - 128, 76, "Speed = " + string(obj_player.movespeed));
//draw_text(room_width / 2 + 64 , 76, "Wave Timer: " + string(wave_timer/room_speed));
if(wave_count != 5)
{
	draw_text(room_width / 2 + 54, 63, "WARP IN: " + string_format(evac_timer/room_speed, 3, 2));
	
	var _steps = 15;
	var _xx = room_width / 2 + 155;
	var _yy = 69;
	var _radius = 22;
	//draw_primitive_begin(pr_trianglefan);
	draw_primitive_begin(pr_linestrip);
	//draw_vertex(_xx, _yy);
	var factor = evac_timer / (room_speed * 60); // I added this and it worked first time!
	for(var i = 0; i <= _steps; ++i;)
	{
	    draw_vertex(_xx + lengthdir_x(_radius, 365 * factor * i / _steps), _yy + lengthdir_y(_radius, 365 * factor * i / _steps));
	}
	draw_primitive_end();
}
//draw_rectangle(room_width / 2 + 300, 82, global.right_border - 1, 90, true);
//draw_rectangle(room_width / 2 + 300, 82, (global.right_border - room_width / 2 + 300) * ((obj_player.power_rate_timer / obj_player.power_rate)), 90, false);
draw_text(global.right_border - 150, 63, "POWER: ");
draw_rectangle(global.right_border - 80, 63, global.right_border, global.top_border - 10, true);

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
