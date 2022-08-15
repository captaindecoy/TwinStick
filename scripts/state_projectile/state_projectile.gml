/// @description state_projectile
function state_projectile() {
	if(hp == 0)
	{
		if(explosive == true)
		{
			inst = instance_create_layer(x, y, "Instances",obj_player_explosion);
			inst.radius = 48;
		}
		instance_destroy();	
	}
	else 
	{
		x += (lengthdir_x(1, dir)) /* * sign(rhvalue) */ *  movespeed;
		y += (lengthdir_y(1, dir)) /* * sign(rvvalue) */ *  movespeed;

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
			//instance_create_layer(x, y, "Instances",obj_player_explosion);
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
		
		if(instance_exists(obj_player) && obj_player.fire_mode == 5)
		{
			part_particles_create(global.P_System, x, y, global.particle2, 10);	
		}
	}
}
