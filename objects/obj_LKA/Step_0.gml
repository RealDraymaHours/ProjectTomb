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

if Stunned = true
{
	StaggerTime = 20;
	Staggered = false;
	Stunned = false;

	CloseToPlayer = false;

	Idle = false;

	SlashCount = 7;
	Slash = false;
	StartSlashing = false;
	SlashCooldown = false;

	SpinStart = false;
	Spinning = false;
	Spin = false;
	CurrentPlayerX = 0;
	CurrentPlayerY = 0;


	ScreamStart = false;
	Scream = false;
	sprite_index = spr_LKA_Stunned;
	
	vspeed = 0;
	hspeed = 0;
	
	
	alarm[3] = 90;
	
	Stunned = false;
	
}


if Tantrum = true
{
	sprite_index = spr_LKA_TantrumStart
	
	if image_index > image_number - 1
	{
		sprite_index = spr_LKA_Tantrum;
		alarm[3] = 120;
		Tantrum = false;
	}
	
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
	IsAttacking = true;
	if StartSlashing = false
	{
		image_index = 0;
		sprite_index = spr_LKA_Slashing;
		if x < oPlayer.x
		{
			hspeed = 6;
		}
		else
		{
			hspeed = -6;
		}
		StartSlashing= true;
		alarm[3] = 258;
	}
	AnimationLock = true;

	

	if place_meeting(x + 120,y,obj_InvFloor1) && self.hspeed = 6
	{

		hspeed = -6;
		image_xscale = 1;

	}
	else if place_meeting(x - 120,y,obj_InvFloor1) && self.hspeed = -6
	{			
		hspeed = 6;
		image_xscale = -1;
	}
	
	
}


if Health < 1
{
	instance_create(x,y,obj_FLKA);
	instance_destroy(obj_LKA_Sword);
	instance_destroy();
}