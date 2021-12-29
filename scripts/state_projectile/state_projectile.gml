/// @description state_projectile
function state_projectile() {
	if(destroy == true)
	{
		instance_destroy();	
	}
	
	x += (lengthdir_x(rhvalue, dir)) * sign(rhvalue) * movespeed;
	y += (lengthdir_y(rvvalue, dir)) * sign(rvvalue) * movespeed;

	collider = instance_place(x, y, obj_enemy_parent)
	if(collider != noone)
	{
	    with(collider)
	    {
	        if(hp > 0)
	        {
	            hp--;
	        }
        
	    }
	    destroy = true;
	}

	timer--;
	if(timer <= 0)
	{
	    destroy = true;
	}

	if(x <= global.left_border || x >= global.right_border 
		|| y <= global.top_border || y >= global.bottom_border)
	{
		// Trying to correct bullet passing boundary
		if(x <= global.left_border)
		{
			x = global.left_border;
		}
		if(x >= global.right_border)
		{
			x = global.right_border;
		}
		if(y <= global.top_border)
		{
			y = global.top_border;
		}
		if(y >= global.bottom_border)
		{
			y = global.bottom_border;	
		}
		destroy = true;
	}
}
