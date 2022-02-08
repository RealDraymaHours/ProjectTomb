/// @description Timers and stats


Tip_X_Distance = 89;
Tip_Y_Distance = 89;

Combo = 0;
Active = true;
Damage = 3;
CoolTime = 30;
Break = 1;

if global.LeftItem = dmg_Soul_Spear
{
	Combo = global.LeftCombo;
}
else
{
	Combo = global.RightCombo;
}

KnockbackDirection = 0;

if oPlayer.onGround
{
	offshoot = random_range(-5,5);
	CoolTime = 35;
	KnockbackTime = 5;
	KnockbackStrenght = 1;
	move_towards_point(mouse_x, mouse_y, 4);
}
else
{
	Damage = 12;
	offshoot = random_range(-40,40);
	KnockbackTime = 2;
	KnockbackStrenght = 1;
	CoolTime = 10;
}




image_angle = point_direction(x, y, mouse_x, mouse_y) -90 + offshoot;


