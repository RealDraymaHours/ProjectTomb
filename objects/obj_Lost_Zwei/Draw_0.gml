/// @description Insert description here
// You can write your code in this editor
draw_self();

image_speed = 0.40;

if !Death
{
	if !Stunned
	{
		if IsAttacking
		{
			sprite_index = spr_Lost_Zwei;	
		}
		else
		{
			sprite_index = spr_Lost_Zwei_Idle;	
		}
	}
	else
	{
		sprite_index = spr_Lost_Zwei_Idle;	
	}
}
else
{
	sprite_index = spr_Lost_Slasher_Death;
}