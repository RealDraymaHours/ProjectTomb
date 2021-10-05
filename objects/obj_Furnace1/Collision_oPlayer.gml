/// @description Insert description here
// You can write your code in this editor
if FurnaceActive = false
{
	if keyboard_check_released(ord("X"))
	{
		sprite_index = spr_FurnaceActive;
		FurnaceActive = true;
		alarm[0] = 600;
	}
}