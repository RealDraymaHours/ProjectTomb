/// @description Insert description here
// You can write your code in this editor

if (event_data[? "message"] == "Create_Hitbox")
{
	if image_xscale = -1
	{
		instance_create(x + 40, y , obj_Hitbox);
		obj_Hitbox.xSize = 101;
		obj_Hitbox.ySize = 104;
		obj_Hitbox.Time = 5;
		obj_Hitbox.StatsSet = true;
	}
	else
	{
		instance_create(x - 140, y , obj_Hitbox);
		obj_Hitbox.xSize = 101;
		obj_Hitbox.ySize = 104;
		obj_Hitbox.Time = 5;
		obj_Hitbox.StatsSet = true;
	}
}

if (event_data[? "message"] == "Create_Hitbox_Left")
{
		instance_create(x - 140, y , obj_Hitbox);
		obj_Hitbox.xSize = 101;
		obj_Hitbox.ySize = 104;
		obj_Hitbox.Time = 5;
		obj_Hitbox.StatsSet = true;
}

if (event_data[? "message"] == "Create_Hitbox_Right")
{
		instance_create(x + 40, y , obj_Hitbox);
		obj_Hitbox.xSize = 101;
		obj_Hitbox.ySize = 104;
		obj_Hitbox.Time = 5;
		obj_Hitbox.StatsSet = true;
}

if (event_data[? "message"] == "Scream")
{
	ShakeCamera(20,2);
}