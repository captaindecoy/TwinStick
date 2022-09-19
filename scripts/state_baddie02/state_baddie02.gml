/// @description state_baddie02
function state_baddie02() {
	if(instance_number(obj_player) > 0)
	{
		dir = point_direction(x, y, obj_player.x, obj_player.y);
	}
	if(fire_timer > 0)
	{
	    fire_timer--;
	}
	else
	{
	    projectile = instance_create_layer(x,y,"Instances",obj_baddie02_projectile);
		/*
		if(instance_number(obj_player) > 0)
		{
			projectile.dir = point_direction(x, y, obj_player.x, obj_player.y);
		}
		*/
		projectile.dir = dir;
	    projectile.image_angle = projectile.dir;
	    //forgetting timer reset just makes infinite! kinda cool actually
	    fire_timer = fire_interval;
	}

	if(hp <= 0)
	{
		part_particles_create(global.P_System, x, y, global.Particle1, 80);
	    instance_destroy();
	}
}
