/// @description Insert description here
// You can write your code in this editor

title = "ONSLAUGHT";
options = [ "NEW GAME", "HOW TO PLAY", "EXIT" ];
cursor = 0;
prev_vaxis = 0;

audio_stop_sound(snd_battle_music);
if(audio_is_playing(snd_title_song) == false)
{
	audio_play_sound(snd_title_song, 10, true);	
}
