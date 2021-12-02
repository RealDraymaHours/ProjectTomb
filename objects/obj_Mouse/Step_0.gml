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

x = mouse_x;
y = mouse_y;



if global.Staggered 
{
	sprite_index = spr_Mouse_Staggered;
	image_angle += 10;
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