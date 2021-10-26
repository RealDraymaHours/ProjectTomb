



if !Stunned
{

	if Running
	{
		if ((!position_meeting(oPlayer.x-64,y,self)) && (!position_meeting(oPlayer.x+64,y,self)))
		{
			move_towards_point(oPlayer.x,y,4);
		}
		else
		{
			image_index = 0;
			Running = false;
			IsAttacking = true;
			alarm[0] = 120;
		}
	}
	else
	{
		hspeed = 0;
	}

	if IsAttacking
	{
		hspeed = 0;
	}
}
else
{
	if !TimerSet
	{
		image_index = 0;
		TimerSet = true;
		alarm[0] = 120;
	}
	hspeed = 0;
}





if Health < 1
{
	Death = true;
}