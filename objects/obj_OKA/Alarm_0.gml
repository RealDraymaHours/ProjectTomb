/// @description Random move

if (y != 293)
{
	y = 293;
}
move = irandom(1);


if CloseToPlayer = true
{
	
	switch (move)
	{
		case 0:
		Walk = true;
		break;
	
		case 1:
		ForwardAttack = true;
		break;
	}
}
else
{
	switch (move)
	{	
		case 0:
		Jump = true;
		break;
	
		case 1:
		Rampage = true;
		break;	
	}
}
