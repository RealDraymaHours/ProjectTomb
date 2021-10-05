/// @description left item

if (!global.Staggered)
{
	if CanLeft == true
	{
		instance_create(oPlayer.x, oPlayer.y, global.LeftItem);
		CanLeft = false;
		alarm[2] = global.LeftItem.CoolTime;
	}
}
