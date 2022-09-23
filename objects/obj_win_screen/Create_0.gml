/// @description Insert description here
// You can write your code in this editor

message1 = "YOU WIN!!";
message2 = "Thanks for playing!";
options = [ "RETURN TO TITLE SCREEN", "EXIT" ];
cursor = 0;
prev_vaxis = 0;

audio_stop_sound(snd_boss_song);
audio_play_sound(snd_victory_song, 10, false);