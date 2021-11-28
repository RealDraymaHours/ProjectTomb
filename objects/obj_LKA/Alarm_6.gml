/// @description Random move


if CloseToPlayer = true
{
move = irandom(2);
	
	switch (move)
	{
		case 0:
		state = "SLASH";
		break;
	
		case 1:
		state = "SCREAM";
		break;
		
		case 2:
		state = "TANTRUM";
		break;
	}
	
	
	if state = prevState
	{
		switch(prevState)
		{
			case("SLASH"):
				state = "TANTRUM";
			break;
			case("SCREAM"):
				state = "SLASH";
			break;
			case("TANTRUM"):
				state = "SLASH";
			break;
		}
	}
}
else
{
	if prevState = "SPIN"
	{
		state = "SCREAM";
	}
	else
	{
		state = "SPIN";
	}
}


prevState = state;