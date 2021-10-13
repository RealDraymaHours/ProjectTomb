/// @description Insert description here
// You can write your code in this editor
if AnimationLock = false
{
	if x < oPlayer.x
	{
		image_xscale = -1;
	}
	else
	{
		image_xscale = 1;
	}
}


if !Stunned
{
if (collision_rectangle(x,y+200,x-175, y-200, oPlayer,false,false) || (collision_rectangle(x,y+200,x + 175, y-200, oPlayer,false,false)))
{
	CloseToPlayer = true;
}
else
{
	CloseToPlayer = false;
}


if CloseToPlayer && !IsAttacking
{
	IsAttacking = true;
}
}
else if Stunned
{
	if Health < 60
	{
		sprite_index = spr_Lost_Slasher_Stunned_2;	
	}
	else
	{
		sprite_index = spr_Lost_Slasher_Stunned;	
	}
	
	if !s
	{
		alarm[0] = 120;
	}
	
	s = true;

}
else if Health < 1
{
	Death = true;
	sprite_index = spr_Lost_Slasher_Death;
}