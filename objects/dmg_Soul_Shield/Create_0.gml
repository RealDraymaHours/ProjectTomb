/// @description Timers and stats
Tip_X_Distance = 59;
Tip_Y_Distance = 59;
Combo = 0;
Active = false;


Timer = 3;

Points = 5;
State = "START";



if global.LeftItem = dmg_Soul_Shield
{
	Combo = global.LeftCombo;
	Timer = 2;
	
}
else
{
	Combo = global.RightCombo;
	Timer = 6;
}


if oPlayer.onGround
{
	Damage = 2;
	CoolTime = 50;
	KnockbackTime = 5;
	KnockbackStrenght = 5;
	sprite_index = sShield_2;
	image_angle = point_direction(x, y, mouse_x, mouse_y);
	
	KnockbackDirection = image_angle;
}
else
{
	Damage = 5
	Active = true;
	CoolTime = 200;
	KnockbackTime = 2;
	KnockbackStrenght = 5;
	State = "FORWARD";
	move_towards_point(mouse_x,mouse_y,6);
	
	KnockbackDirection = direction;
}


Break = 1;


//move_towards_point(mouse_x, mouse_y, 4);


