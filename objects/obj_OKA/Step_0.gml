/// @description all events
//faze player
if AnimationLock = false
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

if (distance_to_object(oFolCam) < 120)
{
	CloseToPlayer = true;
}
else
{
	CloseToPlayer = false;
}

if Stunned = true
{
	state = "STUNNED";
	alarm[2] = 180;
	Stunned = false;
}

if Health < 1
{
	state = "DEATH"
}




switch(state)
{
	case("IDLE"):
		image_speed = 1;
		if alarm[0] == -1{alarm[0] = 30;}
	break;
	case("RAMPAGE"):
		image_speed = 1;
		if alarm[3] == -1{alarm[3] = 60;}
	break;
	case("FORWARD"):
		if alarm[2] == -1{ alarm[2] = 60; image_index = 0;}
		hspeed = 0;
		sprite_index = spr_OKA_ForwardSlash;
		image_speed = 0.5;

	break;
	case("JUMP"):
		switch(JumpState)
		{
			case("JUMP"):
				sprite_index = spr_OKA_Jump;
				move_towards_point(oFolCam.x, oFolCam.y -200,8);
				if(position_meeting(oFolCam.x, oFolCam.y - 200, self)){JumpState = "STOMP";}
			break;
			case("STOMP"):
				sprite_index =  spr_OKA_Falling;
				hspeed = 0;
				vspeed = 0;
				if alarm[1] == -1{alarm[1] = 10;}
			break;
			case("DOWNWARDS"):
				Active = true;;
				sprite_index = spr_OKA_Helmbreaker;
				if place_meeting(x,y,obj_InvFloor1){ 
					vspeed = 0;
					JumpState = "GETUP";
				}
			break;
			case("GETUP"):
			if alarm[2] == -1{alarm[2] = 20; sprite_index = spr_OKA_Stomp; Active = false;};
			break;
		}
			
	break;
	case("WALK"):
		if distance_to_object(oFolCam) < 64{state = "FORWARD";};
		sprite_index = spr_OKA_Walk;
		move_towards_point(oFolCam.x,y,4);
	break;
	case("STUNNED"):
		AnimationLock = true;
		CloseToPlayer = false;
		sprite_index = spr_OKA_Staggered;
	break;
	case("DEATH"):
		sprite_index = spr_OKA_Trigger;
		if alarm[7] == -1{alarm[7] = 20;}
	break;
	
}

