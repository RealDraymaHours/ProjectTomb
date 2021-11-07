/// @desc LeftCooldown
CanLeft = true;

if global.LeftCombo > global.LeftMaxCombo
{
	global.LeftCombo = 0;	
}
else
{
	alarm[1] = global.ComboResetTime;
}

