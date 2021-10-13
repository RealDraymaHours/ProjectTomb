/// @description
draw_self();
image_speed = 0.25;
if !Attacking && !Death
{
	if Health  < 40
	{
		sprite_index = spr_Lost_Mage_2;
	}
	else
	{
		sprite_index = spr_Lost_Mage_1;
	}
}
else if Attacking && !Death
{
	if Health  < 40
	{
		sprite_index = spr_Lost_Mage_Attack_2
	}
	else
	{
		sprite_index = spr_Lost_Mage_Attack_1;
	}		
}
else
{
		sprite_index = spr_Lost_Mage_Death;
}