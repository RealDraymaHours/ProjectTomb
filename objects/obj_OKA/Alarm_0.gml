/// @description Random move

if (y != StartY)
{
	y = StartY;
}


if CloseToPlayer = true
{
	move = irandom(3);
	if distance_to_object(oFolCam) < 2
	{
		state = "AWAY";	
	}
	else
	{
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
