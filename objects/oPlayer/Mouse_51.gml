///@desc Right Weapon

if (!global.Staggered)
{
	if ((CanRight == true) && (global.RightCombo != global.RightMaxCombo))
	{
		audio_play_sound(PlayerSoulWeapon1,1,false);
		
		dir = point_direction(oPlayer.x,oPlayer.y,mouse_x,mouse_y);
		len = point_distance(oPlayer.x,oPlayer.y,mouse_x,mouse_y);
		maxdist = 8;
		
		instance_create(x +lengthdir_x(maxdist,dir), y +lengthdir_y(maxdist,dir), global.RightItem);
		CanRight = false;
		global.RightCombo += 1;
		alarm[6] = global.RightItem.CoolTime;
	}
}
