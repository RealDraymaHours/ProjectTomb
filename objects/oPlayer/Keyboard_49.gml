/// @description Spell 1
if (!global.Staggered)
{
	if Can1 == true
	{
		instance_create(oPlayer.x, oPlayer.y, global.Spell1);
		Can1 = false;
		alarm[7] = global.Spell1.CoolTime;
	}
}
