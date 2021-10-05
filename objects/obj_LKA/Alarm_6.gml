/// @description Random move


if CloseToPlayer = true
{
	if move = 1
	{
		move = 0;
	}
	else
	{
		move = 1;
	}
	
	switch (move)
	{
		case 0:
		Slash = true;
		break;
	
		case 1:
		Scream = true;
		break;
	}
}
else
{
	Spin = true;
}
