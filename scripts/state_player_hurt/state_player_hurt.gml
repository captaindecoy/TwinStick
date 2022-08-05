// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function state_player_hurt(){
	if(hurt_timer > 50)
	{
		hurt_timer--;
		
		dx = (lengthdir_x(1, hurt_direction)) * /*sign(lhaxis) * */ (movespeed*2);
	    dy = (lengthdir_y(1, hurt_direction)) * /* sign(lvaxis) * */ (movespeed*2);
	    if((x + dx - sprite_width / 2) > 96 && (x + dx + sprite_width / 2) < room_width - 96)
	    {
	        x += dx;
	    }
	    if((y + dy - sprite_height / 2) > 96 && (y + dy + sprite_height / 2) < room_height-96)
	    {
	        y += dy;
	    }
	}
	else
	{
		ds_stack_pop(state);
	}
}