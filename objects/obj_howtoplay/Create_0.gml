/// @description Insert description here
// You can write your code in this editor

title = "Thanks for trying my game!";
message1 = "Survive against the swarms";
message2 = "until the warp jump appears!";
message3 = "Use power ups to keep them at bay.";
//options = [ "RETURN TO TITLE SCREEN", "EXIT" ];
//cursor = 0;
//prev_vaxis = 0;

if(audio_is_playing(snd_title_song) == false)
{
	audio_play_sound(snd_title_song, 10, true);	
}