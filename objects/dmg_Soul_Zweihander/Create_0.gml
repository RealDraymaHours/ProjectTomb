/// @description Timers and stats
Name = "Soul Zweihander";
Slash = true;



Tip_X_Distance = 93;
Tip_Y_Distance = 93;

Damage = 20;
CoolTime = 90;

if mouse_x < oPlayer.x
{
	Slash = true
	image_angle = point_direction(x, y, mouse_x, mouse_y) + 180;
}
else
{
	Slash = false;
	image_angle = point_direction(x, y, mouse_x, mouse_y)  ;
}







move_towards_point(mouse_x, mouse_y, 4);


