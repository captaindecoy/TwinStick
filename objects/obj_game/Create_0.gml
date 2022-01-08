state = ds_stack_create();
ds_stack_push(state, state_game_break);


game_timer = 0;
wave_timer = 0;
timer_update = 60
timer1 = timer_update;
spawn_timer = timer1;
//spawn_locationX = -100;
//spawn_locationY = -100;

//arena borders
global.left_border = 96;
global.top_border = 96;
global.right_border = room_width - 96;
global.bottom_border = room_height - 96;

//upgrade option positions
global.upgrade1_x = 128;
global.upgrade1_y = 192;

global.upgrade2_x = 528;
global.upgrade2_y = 192;

//wave settings
wave_break_timer = room_speed * 7;
wave_count = 1;
wave_break_text = "WAVE " + string(wave_count);
current_wave = wave_break_text;
wave_spawning_done = false;