/// @description Insert description here
// You can write your code in this editor
if (event_data[? "message"] == "Lost_Slasher_Attack")
{
if IsAttacking
{
if image_xscale = -1
{
	instance_create(x + 60, y - 60, obj_Hitbox);
	obj_Hitbox.xSize = 101;
	obj_Hitbox.ySize = 80;
	obj_Hitbox.Time = 5;
		obj_Hitbox.Caster = obj_Lost_Slasher;
	obj_Hitbox.StatsSet = true;
}
else
{
	instance_create(x - 160, y - 60, obj_Hitbox);
	obj_Hitbox.xSize = 101;
	obj_Hitbox.ySize = 80;
	obj_Hitbox.Time = 5;
	obj_Hitbox.Caster = obj_Lost_Slasher;
	obj_Hitbox.StatsSet = true;
}
}
alarm[1] = 30;
}

if (event_data[? "message"] == "Destroy_Slasher")
{
	if Death
	{
		instance_destroy();
	}
}
