/// @description Insert description here
// You can write your code in this editor
depth = 2;

D = false;
alarm[0] = 10;

if mouse_x > x
{
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}
else
{
	image_angle = point_direction(x, y, mouse_x, mouse_y);
	image_yscale = -1;
}

move_towards_point(mouse_x,mouse_y,12);
MyLight = c_white;
X = 0.5;
Y = 0.5;
Intensity = 0.5;

oPlayer.CanWarp = false;
global.BunnyBulletActive = true;
