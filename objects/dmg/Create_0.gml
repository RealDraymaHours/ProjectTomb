/// @description stats
Damage = 0;
Cost = 0;
Active = false;

Tip_X_Distance = 0;
Tip_Y_Distance = 0;

CoolTime = 1;
Combo = 0;
Active = false;
Damage = 10;

Break = 0;


if global.LeftItem = dmg
{
	Combo = global.LeftCombo;
}
else
{
	Combo = global.RightCombo;
}

instance_destroy();