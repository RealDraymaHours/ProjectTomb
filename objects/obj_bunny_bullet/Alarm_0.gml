/*
if !global.Inventory
{
	part_emitter_region(part_system, part_emitter,oPlayer.x-8, oPlayer.x+8, oPlayer.y -8 ,oPlayer.y + 8, ps_shape_ellipse, ps_distr_linear);
	part_emitter_burst(part_system, part_emitter, part_type, 500);
	
	oPlayer.x = x;
	oPlayer.y = y;
	oPlayer.CanWarp = false;
	oPlayer.alarm[4] = 60;
}
*/
alarm[0] = 15;

if D
{
	part_type_color3(part_type, c_white, c_blue, c_purple);

	part_emitter_region(part_system, part_emitter,x-16, x+16, y -16 ,y + 16, ps_shape_ellipse, ps_distr_linear);
	part_emitter_burst(part_system, part_emitter, part_type, 200);
	
	instance_destroy();
}

sprite_index = spr_Warp_Bullet2;
D = true;
