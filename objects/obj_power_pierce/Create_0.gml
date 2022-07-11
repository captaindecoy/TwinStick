/// @description Insert description here
// You can write your code in this editor
event_inherited();
ds_stack_pop(state);
ds_stack_push(state, state_powerup_timer);

//power_mode = 3; //hardcoded to current player switch statement value
power_mode = 5;
timer = room_speed * 15;
fire_rate = 24;