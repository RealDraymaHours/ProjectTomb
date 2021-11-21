/// @description Random move

if (y != 293)
{
	y = 293;
}


if CloseToPlayer = true
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
