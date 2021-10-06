/// @description all events
//faze player
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

if (collision_rectangle(x,y+200,x-175, y-200, oPlayer,false,false) || (collision_rectangle(x,y+200,x + 175, y-200, oPlayer,false,false)))
{
	CloseToPlayer = true;
}
else
{
	CloseToPlayer = false;
}

if Stunned = true
{
	Idle = false;

	Walk = false;
	WalkAlarm = false;
	Jump = false;
	Downwards = false;
	GroundHit = false;
	ForwardAttack = false;

	RampageCount = 10;
	RampageTop = false;
	Rampage = false;

	AnimationLock = false;
	CloseToPlayer = false;
	
	sprite_index = spr_OKA_Staggered;
	
	alarm[2] = 120;
	

	Stunned = false;
}

if Idle = true
{
	alarm[0] = 30;
	Idle = false;
}


if Rampage = true
{
	alarm[3] = 30;
	Rampage = false;
}
else if ForwardAttack = true
{
	IsAttacking = true;
	if AnimationLock == false
	{
		image_index = 0;
	}
	
	AnimationLock = true;
	sprite_index = spr_OKA_ForwardSlash;
	
	alarm[2] = 60; 
	
	ForwardAttack = false;
}
else if Walk = true
{
	sprite_index = spr_OKA_Walk;
	move_towards_point(oPlayer.x, y, 2);
	if WalkAlarm = false
	{
		alarm[2] = 240;
	}
	WalkAlarm = true;
}
else if Jump = true
{
	if vspeed = 9
	{
		if place_meeting(obj_OKA.x,obj_OKA.y + 1, obj_InvFloor1)
		{
			if (vspeed != 0)
			{
				alarm[2] = 10;
			}
			
			vspeed = 0;
			sprite_index = spr_OKA_Stomp;
			Staggered = false;

		}
	}
	

	if Downwards = false
	{
		Staggered = true;
		sprite_index = spr_OKA_Jump
		move_towards_point(oPlayer.x, oPlayer.y - 200, 10);		
	}
	
	if position_meeting(oPlayer.x, oPlayer.y - 200, obj_OKA)
	{
			
		if Downwards = false
		{		
			sprite_index = spr_OKA_Falling;
			alarm[1] = 12;
			Downwards = true;
			hspeed = 0;
			vspeed = 0;
		}		
	}
}


if Health < 1
{

if Death = false
{
vspeed = 0;
hspeed = 0;
Idle = false;

Walk = false;
WalkAlarm = false;
Jump = false;
Downwards = false;
GroundHit = false;
ForwardAttack = false;

RampageCount = 10;
RampageTop = true;
Rampage = false;

AnimationLock = false;
CloseToPlayer = false;

	alarm[7] = 60;
	Death = true;
	sprite_index = spr_OKA_Trigger;
}
	
}


