// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function state_evac_portal(){
	image_angle += rotation;
	part_particles_create(global.P_System, x, y, global.Particle4, 10);
	
	if(place_meeting(x, y, obj_player))
	{
		obj_game.wave_spawning_done = true;
		with(obj_enemy_parent)
		{
			instance_destroy();
		}
		with(obj_baddie02_projectile)
		{
			instance_destroy();	
		}
		with(obj_power_parent)
		{
			instance_destroy()
		}
		instance_destroy();
	}
}