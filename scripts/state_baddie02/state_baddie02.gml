/// @description state_baddie02
function state_baddie02() {

	if(fire_timer > 0)
	{
	    fire_timer--;
	}
	else
	{
	    projectile = instance_create(x,y,obj_baddie02_projectile);
	    projectile.dir = point_direction(x, y, obj_player.x, obj_player.y);;
	    projectile.image_angle = projectile.dir;
	    //forgetting timer reset just makes infinite! kinda cool actually
	    fire_timer = fire_interval;
	}

	if(hp == 0)
	{
	    instance_destroy();
	}



}
