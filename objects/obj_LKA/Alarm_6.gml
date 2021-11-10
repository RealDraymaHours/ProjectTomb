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
}
else
{
	state = "SPIN";
}
