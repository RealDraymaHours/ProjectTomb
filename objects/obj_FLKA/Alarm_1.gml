/// @description Chase

if ChaseSwitch = 0
{

	instance_create(Tx1, -16, obj_FLKA_Tornado);
	Tx1 += 48;
	alarm[1] = 8;
	CurrentChase += 1;
	
	if CurrentChase = 18
	{
		ChaseSwitch = 1;
	}
	else if CurrentChase = 36
	{	
		Tx1 = -32;
		Tx2 = 784;
		ChaseSwitch = 2;
	}
}
else if ChaseSwitch = 1
{

		instance_create(Tx2, -16, obj_FLKA_Tornado);
		Tx2 -= 48;

		alarm[1] = 8;

		CurrentChase += 1;
		
	if CurrentChase = 18
	{
		ChaseSwitch = 0;
	}
	else if CurrentChase = 36
	{	
		Tx1 = -32;
		Tx2 = 784;
		ChaseSwitch = 2;
	}
}
else if ChaseSwitch = 2
{
		instance_create(Tx1, -16, obj_FLKA_Tornado);
		Tx1 += 16;
		instance_create(Tx2, -16, obj_FLKA_Tornado);
		Tx2 -= 16;
		
		CurrentChase += 1;

		alarm[1] = 8;
		
		if CurrentChase > 90
		{
			ChaseSwitch = 3;
		}
}
else
{
	alarm[0] = 1;
}


