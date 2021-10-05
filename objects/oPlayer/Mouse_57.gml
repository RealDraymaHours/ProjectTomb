/// @desc right item

if (!global.Staggered)
{
	if CanRight == true
	{
		instance_create(oPlayer.x, oPlayer.y, global.RightItem);
		CanRight = false;
		alarm[3] = global.RightItem.CoolTime;
	}
}


