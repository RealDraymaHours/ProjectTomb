/// @description Damage and trigger
if Staggered = false
{
	Health = (Health - other.Damage);
	alarm[0] = StaggerTime;
	Staggered = true;
}


if Triggered = false
{
					if Health = 40
	{
		sprite_index = spr_Lost_Trigger_1;
	}

	if Health < 40
	{
		sprite_index = spr_Lost_Trigger_2;
	}
	
	if Health < 30
	{
		sprite_index = spr_Lost_Trigger_3;
	}

	if Health < 20
	{
		sprite_index = spr_Lost_Trigger_4;
	}
	if Change = false
	{
		alarm[2] = 27;
	}
	hspeed = 0;
	Change = true;	
	alarm[1] = 240;
}

