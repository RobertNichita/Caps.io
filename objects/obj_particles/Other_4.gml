/// @description Insert description here
// You can write your code in this editor
global.shrapnel = part_type_create();
part_type_shape(global.shrapnel,pt_shape_line);
part_type_size(global.shrapnel, 0.5,0.75,-0.1,0);
part_type_scale(global.shrapnel,0.1,1);
part_type_speed(global.shrapnel,20,25,-0.5,0);
part_type_direction(global.shrapnel,210 - obj_player.angle, 330 - obj_player.angle,0,0);
part_type_life(global.shrapnel, 2, 5);
part_type_orientation(global.shrapnel, 0, 270, 0, 0, 1);

global.muzzle = part_type_create();
part_type_shape(global.muzzle,pt_shape_line);
part_type_colour_rgb(global.muzzle,150,255,40,130,40,60);
part_type_size(global.muzzle, 0.5,0.75,-0.15,0);
part_type_scale(global.muzzle,0.1,1);
part_type_speed(global.muzzle,20,25,-0.5,0);
part_type_life(global.muzzle, 3, 5);
part_type_orientation(global.muzzle, 0, 270, 0, 0, 1)