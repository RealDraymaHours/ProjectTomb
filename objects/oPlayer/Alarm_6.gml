/// @desc Right Cooldown
CanRight = true;

if global.RightCombo > global.RightMaxCombo
{
	global.RightCombo = 0;	
}
else
{
	alarm[1] = global.ComboResetTime;
}