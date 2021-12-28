/// @description state_baddie02_projectile
function state_baddie02_projectile() {

	x += (lengthdir_x(1, dir)) * movespeed;
	y += (lengthdir_y(1, dir)) * movespeed;

	collider = instance_place(x, y, obj_player)
	if(collider != noone)
	{
	    if(collider.current_health > 0)
	    {
	        collider.current_health--;
	        instance_destroy();
	    }
	}

	if(x <= global.left_border || x >= global.right_border 
		|| y <= global.top_border || y >= global.bottom_border)
	{
		instance_destroy();
	}

}
