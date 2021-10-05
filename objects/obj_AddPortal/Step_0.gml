/// @description Insert description here
// You can write your code in this editor
if global.Gems > 0
{
	visible = true;
if global.Gems >= 5
{
	if mouse_check_button_released(mb_left)
	{
		if position_meeting(mouse_x, mouse_y, obj_AddPortal)
			{
				global.Gems -= 5;
				global.Portal = true;
				sprite_index = spr_bought;
			}
   }
}
}

