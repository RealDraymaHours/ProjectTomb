/// @description Random move

if (y != 293)
{
	y = 293;
}
move = irandom(2);


if CloseToPlayer = true
{
	/*
	switch (move)
	{
		case 0:
		state = "WALK"
		break;
	
		case 1:
		state = "FORWARD"
		break;
	}
	*/
	state = "FORWARD"
}
else
{
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
