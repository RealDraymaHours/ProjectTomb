/// @description
Active = false;
alarm[0] = 60;
alarm[1] = 30;

Tip_X_Distance = 1;
Tip_Y_Distance = 1;

Active = false;
Damage = 60;
Cost = 10;

KnockbackTime = 2;
KnockbackStrenght = 5;
Break = 0;

if global.Mana >= Cost
{
	image_xscale = 4;
	global.Mana -= Cost;
}
else
{
	instance_destroy();
}