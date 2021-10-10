/// @description Spell 2
if (!global.Staggered)
{
	if Can2 == true
	{
		instance_create(oPlayer.x, oPlayer.y, global.Spell2);
		Can2 = false;
		alarm[8] = global.Spell2.CoolTime;
	}
}
