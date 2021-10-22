/// @description Weapon

if (!global.Staggered)
{
	if CanLeft == true
	{
		audio_play_sound(PlayerSoulWeapon1,1,false);
		instance_create(oPlayer.x, oPlayer.y, global.LeftItem);
		CanLeft = false;
		alarm[2] = global.LeftItem.CoolTime;
	}
}
