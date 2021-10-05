/// @description Insert description here
// You can write your code in this editor
if global.FurnaceBought4 = false
{
	if global.Points >= 15000
	{
		if keyboard_check_released(ord("X"))
		{
		global.Points -= 15000;
		global.FurnaceBought4 = true;
		sprite_index = spr_FurnaceUnactive;
		}
	}
}
else
{
if FurnaceActive = false
{
	if keyboard_check_released(ord("X"))
	{
		sprite_index = spr_FurnaceActive;
		FurnaceActive = true;
		alarm[0] = 1200;
	}
}
}
