/// @description state_projectile
function state_projectile() {
	if(hp == 0)
	{
		instance_destroy();	
	}
	else 
	{
		x += (lengthdir_x(rhvalue, dir)) * sign(rhvalue) * movespeed;
		y += (lengthdir_y(rvvalue, dir)) * sign(rvvalue) * movespeed;

		collider = instance_place(x, y, obj_enemy_parent)
		if(collider != noone && collider.active == true && ds_list_find_index(enemies_hit_list, collider) == -1)
		{
		    with(collider)
		    {
		        if(hp > 0)
		        {
					//previousHp = hp;
		            hp -= other.damage;
		        }
        
		    }
			ds_list_add(enemies_hit_list, collider);
		    //destroy = true;
			hp--;
			//instance_create(x, y, obj_player_explosion);
		}
		
		

		timer--;
		if(timer <= 0)
		{
		    //destroy = true;
			hp = 0;
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
			//destroy = true;
			hp = 0;
		}
	}
}
