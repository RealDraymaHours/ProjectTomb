/// @desc Parry

if (!global.Staggered)
{
	if CanLeft == true && Parry = false
	{
		instance_create(oPlayer.x, oPlayer.y, dmg_Shield);
		speed = 0;
		Parry = true;	
		alarm[3] = 20;
	}
}


