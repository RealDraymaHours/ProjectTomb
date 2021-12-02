if Stunned
{
	state = "STUNNED";
}

if ((state != "STUNNED") && (state != "DEATH") && (state != "ATTACK"))
{
	if (collision_rectangle(x,y+200,x-175, y-200, oFolCam,false,false) || (collision_rectangle(x,y+200,x + 175, y-200, oFolCam,false,false)))
	{
		state = "ATTACK"
	}
	
	if x < oFolCam.x
	{
		image_xscale = -1;
	}
	else
	{
		image_xscale = 1;
	}
}

if Health < 1
{
	state = "DEATH";
}

switch(state)
{
	case("IDLE"):
		image_speed = 0.40;
		image_index = 0;
		sprite_index = spr_Lost_Zwei_Idle;
	break;
	case("ATTACK"):
		image_speed = 0.55;
		sprite_index = spr_Lost_Zwei;
	break;
	case("STUNNED"):
		image_speed = 1;
		sprite_index = spr_Lost_Zwei_Idle;
		if alarm[0] == -1{alarm[0] = 120;}
	break;
	case("DEATH"):
		image_speed = 0.40;
		sprite_index = spr_Lost_Zwei_Death;
	break;
	
}

