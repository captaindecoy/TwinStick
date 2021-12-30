draw_set_color(c_red);
draw_text(96, 76, string_hash_to_newline("HP " + string(obj_player.current_health) + "/" + string(obj_player.max_health)));
draw_rectangle(160, 82, 160 + (32 * obj_player.max_health), 90, true);
draw_rectangle(160, 82, 160 + (32 * obj_player.current_health), 90, false);

//draw_rectangle(global.left_border, global.top_border, global.right_border, global.bottom_border, true);

draw_set_color(c_lime);
if(spawn_timer > 0 /*&& timer1 == 0*/)
{
    draw_circle(spawn_locationX, spawn_locationY, spawn_timer, true);
}

/* */
/*  */
