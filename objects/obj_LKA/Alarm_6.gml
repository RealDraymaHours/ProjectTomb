/// @description Random move


if CloseToPlayer = true
{
move = irandom(2);
	
	switch (move)
	{
		case 0:
		Slash = true;
		break;
	
		case 1:
		Scream = true;
		break;
		
		case 2:
		Tantrum = true;
		break;
	}
}
else
{
	Spin = true;
}
