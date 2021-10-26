draw_self();

image_speed = 0.5;

if !Stunned && !Death
{
	if IsAttacking
	{
		if Health > 110
		{
			sprite_index = spr_Lost_Spear_Attack;
		}
		else
		{
			sprite_index = spr_Lost_Spear_Attack2;
		}	
	}
	else
	{
		if Running
		{
			if Health > 110
			{
				sprite_index = spr_Lost_Spear_Run;
			}
			else
			{
				sprite_index = spr_Lost_Spear_Run2;
			}
		}
		
		if x < oPlayer.x
		{
			image_xscale = -1;
		}
		else
		{
			image_xscale = 1;
		}
	}
}
else if Death
{
	sprite_index = spr_Lost_Spear_Death;
}
else
{
	if Health > 110
	{
		sprite_index = spr_Lost_Spear_Stunned;
	}
	else
	{
		sprite_index = spr_Lost_Spear_Stunned2;
	}
}
