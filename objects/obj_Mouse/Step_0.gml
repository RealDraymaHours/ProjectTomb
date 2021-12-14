if global.Inventory
{
	state = stateFree;
	state();
}
else
{
	state = stateOff;
	state();
}
depth = -200;

image_xscale = 0.5;
image_yscale = 0.5;

x = mouse_x;
y = mouse_y;



if (instance_exists(dmg_Shield))
{
	sprite_index = spr_Mouse_Parry;
	
}
else if global.Staggered 
{
	sprite_index = spr_Mouse_Staggered;
	image_angle += 10;
}
else if(instance_exists(obj_bunny_bullet))
{
	sprite_index = spr_Mouse_Dash;
	image_angle += 20;
}
else if ((instance_exists(oPlayer)) && oPlayer.state = 14)
{
	sprite_index = spr_Mouse_Active;
}
else
{
	sprite_index = spr_Mouse_Free;
	image_angle += 2;
}