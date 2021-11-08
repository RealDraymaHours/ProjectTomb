/// @description Timers and stats
Tip_X_Distance = 59;
Tip_Y_Distance = 59;
Combo = 0;
Active = false;
Damage = 10;
depth = -20;

if global.LeftItem = dmg_Basic_Sword
{
	Combo = global.LeftCombo;
}
else
{
	Combo = global.RightCombo;
}

switch(Combo)
{
	case(0):
		sprite_index = sBS_1;
	break;
	case(1):
		sprite_index = sBS_2;
	break;
	case(2):
		sprite_index = sBS_3;
	break;
}



if oPlayer.onGround
{
	CoolTime = 30;
	KnockbackTime = 5;
	KnockbackStrenght = 5;
}
else
{
	KnockbackTime = 2;
	KnockbackStrenght = 5;
	CoolTime = 20;
}


Break = 1;
if mouse_x > oPlayer.x
{
	KnockbackDirection = 0;
}
else
{
	KnockbackDirection = 180;
}

image_angle = point_direction(x, y, mouse_x, mouse_y) -90;
//move_towards_point(mouse_x, mouse_y, 4);


