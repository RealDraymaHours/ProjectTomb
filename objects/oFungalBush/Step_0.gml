if Staggered
{
	state = "WIGGLE";
}

switch(state)
{
	case("IDLE"):
		sprite_index = sFungalBushIdle;
		Active = false;
	break;
	case("WIGGLE"):
		if alarm[2] == -1{alarm[2] = 120;}
		sprite_index = sFungalBushShake;
		//Active = true;
	break;
}

if Health < 1
{
	instance_destroy();
}