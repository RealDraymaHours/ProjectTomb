/// @description Insert description here
// You can write your code in this editor
part_type_color3(part_type, c_white, c_blue, c_purple);

part_emitter_region(part_system, part_emitter,x-16, x+16, y -16 ,y + 16, ps_shape_ellipse, ps_distr_linear);
part_emitter_burst(part_system, part_emitter, part_type, 200);
	

instance_destroy();	
