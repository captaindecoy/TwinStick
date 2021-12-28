/// @description state_projectile
function state_projectile() {
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
	    instance_destroy();
	}

	timer--;
	if(timer <= 0)
	{
	    instance_destroy();
	}

	if(x <= global.left_border || x >= global.right_border 
		|| y <= global.top_border || y >= global.bottom_border)
	{
		instance_destroy();
	}
}
