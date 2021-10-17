/// @description make smaller
depth = -98;
MyLight = c_yellow;
X = 0.15;
Y = 0.15;
Intensity = 0.3;


Tip_X_Distance = 1;
Tip_Y_Distance = 1;

Damage = 20;
Cost = 2;

if global.Mana >= Cost
{
	image_xscale = 0.25;
	image_yscale = 0.25;
	move_towards_point(mouse_x, mouse_y, 4);
	global.Mana -= 2;
}
else
{
	instance_destroy();
}