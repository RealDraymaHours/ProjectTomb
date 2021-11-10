/// @description all the stuff

image_angle += 30;

if GetBack = false
{
	if Back = false
	{
		alarm[1] = 240;
		Back = true;
	}
	
	if position_meeting(obj_LKA.x, obj_LKA.y - 120, obj_LKA_Sword)
	{
		vspeed = 0;
		hspeed = 0;
	
		if Repeat = true
		{
			alarm [0] = 20;
			Repeat = false;
		}
	
	}
	else
	{
		move_towards_point(obj_LKA.x, obj_LKA.y -120, 10);
	}

}
else
{
	if !position_meeting(obj_LKA.x, obj_LKA.y + 20, obj_LKA_Sword)
	{
		move_towards_point(obj_LKA.x, obj_LKA.y + 20, 10);
	}
	else
	{
		instance_destroy();
	}
}

