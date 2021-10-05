/// @description all events
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

if (collision_rectangle(x,y+200,x-350, y-200, oPlayer,false,false) || (collision_rectangle(x,y+200,x + 350, y-200, oPlayer,false,false)))
{
	CloseToPlayer = true;
}
else
{
	CloseToPlayer = false;
}


if Scream = true
{
	AnimationLock = true;
	if ScreamStart = false
	{
		sprite_index = spr_LKA_Scream_Start;
		alarm[1] = 20;
		ScreamStart = true;
	}
}


if Spin = true
{
	AnimationLock = true;
	if SpinStart = false
	{
		CurrentPlayerX = oPlayer.x;
		CurrentPlayerY = oPlayer.y;
		sprite_index = spr_LKA_Spin_Start;
		alarm[4] = 20;
		SpinStart = true;
	}
	else if Spinning = true
	{
		
		if image_xscale = 1
		{
			image_angle += 20	
			if (!position_meeting(CurrentPlayerX - 100, CurrentPlayerY - 100, obj_LKA) && (obj_LKA.x > 150))
			{
				move_towards_point(CurrentPlayerX - 100, CurrentPlayerY - 100, 8);
			}
			else
			{
				Spin = false;
				vspeed = 6;
				alarm[3] = 10;
			}
		}
		else
		{
			image_angle -= 20	
			if (!position_meeting(CurrentPlayerX + 100, CurrentPlayerY - 100, obj_LKA) && (obj_LKA.x <  620 ))
			{
				move_towards_point(CurrentPlayerX + 100, CurrentPlayerY - 100, 8);
			}
			else
			{
				Spin = false;
				vspeed = 6;
				alarm[3] = 10;
			}
		}
	}
}

if Slash = true
{
	if StartSlashing = false
	{
		image_index = 0;
		sprite_index = spr_LKA_Slashing;
		if x < oPlayer.x
		{
			hspeed = 8;
		}
		else
		{
			hspeed = -8;
		}
		StartSlashing= true;
		alarm[5] = 30;
		alarm[3] = 258;
	}
	AnimationLock = true;

	

	if place_meeting(x,y,obj_InvFloor1)
	{
		if hspeed = 6
		{			
			hspeed = -6;
			image_xscale = 1;
		}
		else
		{
			hspeed = 6;
			image_xscale = -1;
		}
	}
	
	
}


if Health < 1
{
	instance_destroy(obj_LKA_Sword);
	instance_destroy();
}