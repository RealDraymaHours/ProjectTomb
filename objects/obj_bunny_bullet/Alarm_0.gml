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
alarm[0] = 5;

if D
{
	instance_create_depth(x,y,-1,oPlayer);
	
	instance_destroy();
}

D = true;
