switch(state)
{
	case("WINDUP"):
		i = irandom(1);
			
		switch(i)
		{
			case(0):
				image_index = 0;
				state = "PARRY"
			break;
				
			case(1):
				image_index = 0;
				state = "DASH"
			break;
		}
	break;
	case("DASH"):
		state = "FORWARD"
	break;
	case("PARRY"):
		state = "IDLE"
	break;
}