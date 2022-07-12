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

//player bullet particle

global.particle2 = part_type_create();

part_type_shape(global.particle2, pt_shape_cloud);

part_type_size(global.particle2, 0.01, 0.05, 0, 0.3);

part_type_color1(global.particle2, c_red);

part_type_alpha3(global.particle2, 0.5, 1, 0);

part_type_speed(global.particle2, 1, 4, -0.10, 0);

part_type_direction(global.particle2, 0, 359, 0, 20);

part_type_blend(global.particle2, true);

part_type_life(global.particle2, 20, 50);

global.Particle3 = part_type_create();

part_type_shape(global.Particle3, pt_shape_explosion);

part_type_size(global.Particle3, 0.05, 0.10, 0, 0.3);

part_type_color2(global.Particle3, c_red, c_orange);

part_type_alpha3(global.Particle3, 0.5, 1, 0);

part_type_speed(global.Particle3, 1, 4, -0.10, 0);

part_type_direction(global.Particle3, 0, 359, 0, 20);

part_type_blend(global.Particle3, true);

part_type_life(global.Particle3, 20, 50);
