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
