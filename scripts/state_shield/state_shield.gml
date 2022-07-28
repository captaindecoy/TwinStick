// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function state_shield(){
	x = obj_player.x;
	y = obj_player.y;
	image_angle += 1;
	part_particles_create(global.P_System, x, y, global.Particle4, 10);
	
	enemy_collider = instance_place(x, y, obj_enemy_parent);
	if(enemy_collider != noone && enemy_collider.active == true)
	{
		instance_destroy(enemy_collider);
		instance_create_layer(x, y,"Instances", obj_player_explosion);
		instance_destroy();
	}
	bullet_collider = instance_place(x, y, obj_baddie02_projectile);
	if(bullet_collider != noone)
	{
		instance_destroy(bullet_collider);
		instance_create_layer(x, y,"Instances", obj_player_explosion);
		instance_destroy();
	}
}