/// @description Insert description here
// You can write your code in this editor
if global.First10 = false
{
	visible = false;
}
else
{
	visible = true;
if global.Points >= global.MultiCost
{
	if mouse_check_button_released(mb_left)
	{
		if position_meeting(mouse_x, mouse_y, obj_AddMultiplier)
			{
				global.Points -= global.MultiCost;
				global.MultiCost = global.MultiCost * 2;
				global.Multiplier += 1;
			}
   }
}
}

