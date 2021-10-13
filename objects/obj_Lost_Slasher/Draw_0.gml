/// @description Insert description here
// You can write your code in this editor
draw_self();

image_speed = 0.40;

if IsAttacking
{
	if Health < 60
	{
		sprite_index = spr_Lost_Slasher_2;	
	}
	else
	{
		sprite_index = spr_Lost_Slasher;	
	}
}
else
{
	if Health < 60
	{
		sprite_index = spr_Lost_Slasher_Idle_2;	
	}
	else
	{
		sprite_index = spr_Lost_Slasher_Idle;	
	}
}