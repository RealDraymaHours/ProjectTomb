if !global.Inventory
{
	part_emitter_region(part_system, part_emitter,oPlayer.x-8, oPlayer.x+8, oPlayer.y -8 ,oPlayer.y + 8, ps_shape_ellipse, ps_distr_linear);
	part_emitter_burst(part_system, part_emitter, part_type, 500);
	oPlayer.CanWarp = false;	
	oPlayer.x = x;
	oPlayer.y = y;
	oPlayer.CanWarp = false;
	oPlayer.Warping = true;
	oPlayer.alarm[4] = 10;
}
instance_destroy();	