/// @description Left weapon

if ((!global.Staggered) && (CanRight))
{
	if ((CanLeft == true) && (global.LeftCombo != global.LeftMaxCombo))
	{
		audio_play_sound(PlayerSoulWeapon1,1,false);
		
		dir = point_direction(oPlayer.x,oPlayer.y,mouse_x,mouse_y);
		len = point_distance(oPlayer.x,oPlayer.y,mouse_x,mouse_y);
		maxdist = 8;
		
		instance_create(x +lengthdir_x(maxdist,dir), y +lengthdir_y(maxdist,dir), global.LeftItem);
		CanLeft = false;
		global.LeftCombo += 1;
		alarm[2] = global.LeftItem.CoolTime;
	}
}
