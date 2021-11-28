/// @description Chase

if ChaseSwitch = 0
{

	instance_create(Tx1, 144, obj_FLKA_Tornado);
	Tx1 += 48;

	CurrentChase += 1;
	
	if CurrentChase = 18
	{
		ChaseSwitch = 69;
		alarm[0] = 1;
	}
	else
	{	
		alarm[1] = 6;
	}
}
else if ChaseSwitch = 1
{

		instance_create(Tx2, 144, obj_FLKA_Tornado);
		Tx2 -= 48;

		CurrentChase += 1;
		
	if CurrentChase = 18
	{
		ChaseSwitch = 69;
		alarm[0] = 1;
	}
	else
	{	
		alarm[1] = 6;
	}
}
else if ChaseSwitch = 2
{
		instance_create(Tx1, 144, obj_FLKA_Tornado);
		Tx1 += 32;
		instance_create(Tx2, 144, obj_FLKA_Tornado);
		Tx2 -= 32;
		
		CurrentChase += 1;


		
		if CurrentChase = 62
		{
			ChaseSwitch = 69;
			alarm[0] = 1;
		}
		else
		{
			alarm[1] = 8;
		}
}
else
{
	alarm[0] = 1;
}


