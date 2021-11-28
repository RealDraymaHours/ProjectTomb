/// @description Random move

if (y != StartY)
{
	y = StartY;
}

if distance_to_object(oFolCam) < 2
{
	state = "AWAY";	
}
else 
{
	if CloseToPlayer
	{
		move = irandom(3);
		switch (move)
		{
			case 0:
			state = "AWAY"
			break;
		
			case 1:
			state = "FORWARD"
			break;
			
			case 2:
			state = "FORWARD"
			break;
		
			case 3:
			state = "FORWARD"
			break;
		}
	}
	else
	{
		move = irandom(2);
		switch (move)
		{	
			case 0:
			state = "JUMP"
			break;
		
			case 1:
			state = "RAMPAGE"
			break;	
			
			case 2:
			state = "WALK"
			break;
		}
	}
	
	if state = prevState
	{
		switch(state)
		{
			case("RAMPAGE"):
				state = "JUMP";
			break;
			case("JUMP"):
				state = "WALK";
			break;
			case("WALK"):
				state = "JUMP";
			break;
			case("FORWARD"):
			state = "FORWARD";
			break;
			case("AWAY"):
				state = "FORWARD";
			break;
		}
	}
}


prevState = state;