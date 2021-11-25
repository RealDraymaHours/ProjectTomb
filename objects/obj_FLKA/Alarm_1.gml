/// @description Chase

if ChaseSwitch = 0
{

	instance_create(Tx1, 144, obj_FLKA_Tornado);
	Tx1 += 48;
	alarm[1] = 6;
	CurrentChase += 1;
	
	if CurrentChase = 18
	{
		ChaseSwitch = 1;
	}
	else if CurrentChase = 36
	{	
		Tx1 = ArenaStart - 32;
		Tx2 = ArenaStart + 784;
		ChaseSwitch = 2;
	}
}
else if ChaseSwitch = 1
{

		instance_create(Tx2, 144, obj_FLKA_Tornado);
		Tx2 -= 48;

		alarm[1] = 6;

		CurrentChase += 1;
		
	if CurrentChase = 18
	{
		ChaseSwitch = 0;
	}
	else if CurrentChase = 36
	{	
		Tx1 = ArenaStart - 32;
		Tx2 = ArenaStart + 784;
		ChaseSwitch = 2;
	}
}
else if ChaseSwitch = 2
{
		instance_create(Tx1, 144, obj_FLKA_Tornado);
		Tx1 += 32;
		instance_create(Tx2, 144, obj_FLKA_Tornado);
		Tx2 -= 32;
		
		CurrentChase += 1;

		alarm[1] = 8;
		
		if CurrentChase > 62
		{
			ChaseSwitch = 3;
		}
}
else
{
	alarm[0] = 1;
}


