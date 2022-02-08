/// @description random move

switch irandom(2)
{
	case 0:
	state = "JUMP";
	break;
	
	case 1:
	state = "CHASE";
	break;
		
	case 2:
	state = "CAGE";
	break;
}



if state = prevState
{
	sameState += 1;
}


if sameState = 3
{
	switch(state)
	{
		case("JUMP"):
			state = "CAGE";
		break;
		case("CHASE"):
			state = "JUMP";
		break;
		case("CAGE"):
			state = "JUMP";
		break;
	}
	
	sameState = 0;
}


if state = "CHASE"
{
	if ((oFolCam.x > ArenaStart + 200)&&(oFolCam.x  < ArenaEnd - 200))
	{
		Tx1 = ArenaStart - 32;
		Tx2 = ArenaStart + 784;
		ChaseSwitch = 2;
		CurrentChase = 36;
	}
	else if oFolCam.x  > ArenaStart + 400
	{
		ChaseSwitch = 0;
	}
	else if oFolCam.x  < ArenaStart + 400
	{
		ChaseSwitch = 1;
	}
}

SekiroWarning();

prevState = state;