state = ds_stack_create();
ds_stack_push(state, state_game_break);

randomize();
game_timer = 0;
wave_timer = 0;
timer_update = 60
timer1 = timer_update;
spawn_timer = timer1;
enable_powerups = false;
mite_spawns = 13;
mites_destroyed = 0;
powerup_chance = 5;
current_powerup_chance = powerup_chance;
baddie01_spawns = 5;
//spawn_locationX = -100;
//spawn_locationY = -100;

//arena borders
global.left_border = 96;
global.top_border = 96;
global.right_border = room_width - 96;
global.bottom_border = room_height - 96;

//upgrade variables
upgrade_list = ds_list_create();
ds_list_add(upgrade_list, 
	obj_upgrade_hp,
	obj_upgrade_hp,
	obj_upgrade_speed,
	obj_upgrade_damage,
	obj_upgrade_healall,
	obj_upgrade_healall,
	obj_upgrade_twoshot,
	obj_upgrade_waveheal);
enemy_upgrade_list = ds_list_create();
ds_list_add(enemy_upgrade_list,
	obj_enemy_upgrade_bug_hp,
	obj_enemy_upgrade_bug_hp,
	obj_enemy_upgrade_bug_speed,
	obj_enemy_upgrade_bug_speed,
	obj_enemy_upgrade_turret_attack_speed,
	obj_enemy_upgrade_turret_attack_speed,
	obj_enemy_upgrade_turret_hp,
	obj_enemy_upgrade_turret_hp);
upgrade1 = noone;
upgrade2 = noone;
enemy_upgrade1 = noone;
enemy_upgrade2 = noone;
heal_after_wave = false;
upgrade_bug_hp = 0;
upgrade_bug_movespeed = 0;
upgrade_turret_hp = 0;
upgrade_turret_attack_speed = 1;

//upgrade option positions
global.upgrade1_x = 128;
global.upgrade1_y = 192;

global.upgrade2_x = 528;
global.upgrade2_y = 192;

global.enemy_upgrade1_x = 128;
global.enemy_upgrade1_y = room_height / 2 + 16;

global.enemy_upgrade2_x = 528;
global.enemy_upgrade2_y = room_height / 2 + 16;

//wave settings
wave_break_timer = room_speed * 7;
wave_count = 1;
wave_break_text = "WAVE " + string(wave_count);
current_wave = wave_break_text;
wave_spawning_done = false;

//global.P_System = part_system_create_layer(layer, true);
//global.Particle1 = part_type_create();
