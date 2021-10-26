/// @description Insert description here
// You can write your code in this editor
draw_self();

image_speed = 0.40;

if hspeed > 0
{
	image_xscale = -1;
}
else
{
	image_xscale = 1;
}

if !Death
{
	if IsAttacking
	{
		if Health < 30
		{
			sprite_index = spr_Lost_Runner_Run2;	
		}
		else
		{
			sprite_index = spr_Lost_Runner_Run;	
		}
	}
	else
	{
		if Health < 30
		{
			sprite_index = spr_Lost_Runner_2;	
		}
		else
		{
			sprite_index = spr_Lost_Runner;	
		}
	}
}
else
{
	sprite_index = spr_Lost_Runner_Death;
}