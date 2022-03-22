/// @description Insert description here
// You can write your code in this editor
global.P_System = part_system_create_layer(layer, true);
global.Particle1 = part_type_create();

part_type_shape(global.Particle1, pt_shape_flare);

part_type_size(global.Particle1, 0.01, 0.05, 0, 0.3);

part_type_color3(global.Particle1, c_aqua, c_lime, c_red);

part_type_alpha3(global.Particle1, 0.5, 1, 0);

part_type_speed(global.Particle1, 1, 4, -0.10, 0);

part_type_direction(global.Particle1, 0, 359, 0, 20);

part_type_blend(global.Particle1, true);

part_type_life(global.Particle1, 20, 50);

