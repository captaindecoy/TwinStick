/// @description state_baddie02_projectile
function state_baddie02_projectile() {

	x += (lengthdir_x(1, dir)) * movespeed;
	y += (lengthdir_y(1, dir)) * movespeed;

	collider = instance_place(x, y, obj_player)
	if(collider != noone)
	{
	    if(collider.current_health > 0 && collider.hurt_timer == -1)
	    {
			// called in player state as well
	        collider.current_health--;
			collider.hurt_direction = image_angle;
			collider.hurt_timer = collider.hurt_timer_rate;
			ds_stack_push(collider.state, state_player_hurt);
	        collider.image_speed = .5;
			
	        instance_destroy();
	    }
	}

	if(x <= global.left_border || x >= global.right_border 
		|| y <= global.top_border || y >= global.bottom_border)
	{
		instance_destroy();
	}

}
