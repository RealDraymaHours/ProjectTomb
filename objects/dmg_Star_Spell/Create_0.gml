/// @description make smaller
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