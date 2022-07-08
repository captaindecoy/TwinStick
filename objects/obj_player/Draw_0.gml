draw_self();
/*
draw_sprite_ext(spr_player, 0, x-1, y, 1, 1, image_angle, c_white, random_range(.2,1.0));
draw_sprite_ext(spr_player, 0, x, y-1, 1, 1, image_angle, c_white, random_range(.2,1.0));
draw_sprite_ext(spr_player, 0, x+1, y, 1, 1, image_angle, c_white, random_range(.2,1.0));
draw_sprite_ext(spr_player, 0, x, y+1, 1, 1, image_angle, c_white, random_range(.2,1.0));
*/
if(muzzel_flash == true)
{
    draw_set_color(c_white);
    draw_circle(x + lengthdir_x(sprite_width/2, obj_player.rdir), y + lengthdir_y(sprite_height/2, obj_player.rdir), sprite_width/2, false);
    muzzel_flash = false;
}

if(fire_mode == 4 && (abs(rhaxis) > .5 || abs(rvaxis) > .5)) //&& fire_rate_timer == fire_rate)
{
	draw_set_color(c_red);
	draw_line_width(x, y, x + lengthdir_x(64, obj_player.rdir)+2, y + lengthdir_y(64, obj_player.rdir)+2, 4);
}

/* */
/*  */
