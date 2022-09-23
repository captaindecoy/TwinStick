event_inherited();
ds_stack_push(state, state_baddie02_projectile);

image_speed = 0;
movespeed = 10;

if(audio_is_playing(snd_enemy_projectile) == false)
{
	audio_play_sound(snd_enemy_projectile, 10, false);	
}