/// @description all events
if !AnimationLock
{
	if x < oFolCam.x
	{
		image_xscale = -1;
	}
	else
	{
		image_xscale = 1;
	}
}

if (distance_to_object(oFolCam) < 200)
{
	CloseToPlayer = true;
}
else
{
	CloseToPlayer = false;
}

if (Stunned)
{
	state = "STUNNED";
	Stunned = false;
}

switch(state)
{
	case("IDLE"):
	StartY = y;
	if alarm[6] == -1{alarm[6] = 30;}
	break;
	case("TANTRUM"):
		if !(Tantrum)
		{
			sprite_index = spr_LKA_TantrumStart;
			if (image_index > image_number - 1)
			{
				Tantrum = true;
			}
		}
		else
		{
			image_speed = 1;
			image_xscale = 1;
			sprite_index = spr_LKA_Tantrum;
			if alarm[3] == -1{alarm[3] = 120;}
		}
	break;
	case("SCREAM"):
		if ((alarm[1] == -1) && (!Scream)){
			sprite_index = spr_LKA_Scream_Start;
			alarm[1] = 20;
		}
	break;
	case("SPIN"):
		Active = true;
		switch(SpinState)
		{		
			case("START"):
				sprite_index = spr_LKA_Spin_Start;
				if alarm[4] == -1{alarm[4] = 20;}
			break;
			case("GO"):
			AnimationLock = true;
				if image_xscale = 1
				{
					image_angle += 20	
					if (!position_meeting(CurrentPlayerX - 200, CurrentPlayerY - 100, obj_LKA) && !(obj_LKA.x <= 150))
					{
						move_towards_point(CurrentPlayerX - 200, CurrentPlayerY - 100, 8);
					}
					else
					{
						Spin = false;
						vspeed = 6;
						if alarm[3] == -1 {alarm[3] = 10;}
					}
				}
				else
				{
					image_angle -= 20	
					if (!position_meeting(CurrentPlayerX + 200, CurrentPlayerY - 100, obj_LKA) && !(obj_LKA.x >=  620 ))
					{
						move_towards_point(CurrentPlayerX + 200, CurrentPlayerY - 100, 8);
					}
					else
					{
						Spin = false;
						vspeed = 6;
						if alarm[3] == -1 {alarm[3] = 10;}
					}	
				}
			break;
		}
	break;
	case("SLASH"):
		if alarm[3] == -1
		{
			image_index = 0;
			sprite_index = spr_LKA_Slashing;
			if x < oFolCam.x
			{
				hspeed = 6;
			}
			else
			{
				hspeed = -6;
			}
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
	break;
	case("STUNNED"):
		hspeed = 0;
		vspeed = 0;
		sprite_index = spr_LKA_Stunned;
		AnimationLock = true;
		if alarm[3]  == -1{alarm[3] = 90;}
	break;
	case("AIRSTUNNED"):
		AnimationLock = true;
		image_angle = 0;
		sprite_index = spr_LKA_AirStagger;
		if image_xscale = 1
				{
					if (!position_meeting(CurrentPlayerX + 200, 386, obj_LKA) && !(obj_LKA.x <= 150))
					{
						move_towards_point(CurrentPlayerX + 200, 386, 12);
					}
					else
					{
						hspeed = 0;
						vspeed = 0;
						if alarm[3] == -1 {alarm[3] = 1;}
					}
				}
				else
				{
					if (!position_meeting(CurrentPlayerX - 200, 386, obj_LKA) && !(obj_LKA.x >=  620 ))
					{
						move_towards_point(CurrentPlayerX - 200, 386, 12);
					}
					else
					{
						hspeed = 0;
						vspeed = 0;
						if alarm[3] == -1 {alarm[3] = 1;}
					}	
				}
	break;
}


if Health < 1
{
	instance_create(x,y,obj_FLKA);
	instance_destroy(obj_LKA_Sword);
	instance_destroy();
}