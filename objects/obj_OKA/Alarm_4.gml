/// @description Rampage create wind

	
if RampageTop = true
{

		if x < oPlayer.x
	{
		instance_create(x + 114, y + 12, obj_OKA_Wind);
	}
	else
	{
		instance_create(x - 114, y + 12, obj_OKA_Wind);
	}
	
	RampageCount -= 1;
	alarm[5] = 12;
}
else
{
	if x < oPlayer.x
	{
		instance_create(x + 114, y + 60, obj_OKA_Wind);
	}
	else
	{
		instance_create(x - 114, y  + 60, obj_OKA_Wind);
	}
	RampageCount -= 1;
	alarm[5] = 12;
}
