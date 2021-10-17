move_bounce_solid(1);
if Health < 1
{
	sprite_index = spr_Scarab_Death;
	Death = true;
}

	if x < oPlayer.x
	{
		image_xscale = -1;
	}
	else
	{
		image_xscale = 1;
	}

mp_potential_step(oPlayer.x, oPlayer.y, 2, false);