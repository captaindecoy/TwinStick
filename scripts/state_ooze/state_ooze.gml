/// @description state_baddie01
function state_ooze() {
	if(image_timer > 0)
	{
		image_timer--;
	}
	else
	{
		image_index = irandom_range(0, image_number - 1);
		//image_xscale = random_range(1.5, 1.7);
		//image_yscale = random_range(1.5, 1.7);
		show_debug_message("xscale: " + string(image_xscale));
		if(image_xscale < 7)
		{
			image_xscale += random_range(.3, .5);
			image_yscale += random_range(.3, .5);
			if(round(image_xscale) % 2 == 0)
			{
				hp += 1;
			}
		}
		image_angle = irandom_range(0, 360);
		image_timer = irandom_range(room_speed - 15, room_speed + 15);
	}
	if(hp <= 0)
	{
		part_particles_create(global.P_System, x, y, global.Particle1, 20);
		audio_play_sound(snd_explosion1, 10, false);
	    instance_destroy();
	}

}
