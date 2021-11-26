/// @description hitboxes

if (event_data[? "message"] == "Create_Hitbox")
{
	/// @description Slash hitbox
if image_xscale = -1
{
	instance_create(x + 30, y + 60, obj_Hitbox);
	obj_Hitbox.xSize = 101;
	obj_Hitbox.ySize = 44;
	obj_Hitbox.Time = 5;
	obj_Hitbox.Caster = self;
	obj_Hitbox.StatsSet = true;
}
else
{
	instance_create(x - 130, y + 60, obj_Hitbox);
	obj_Hitbox.xSize = 101;
	obj_Hitbox.ySize = 44;
	obj_Hitbox.Time = 5;
	obj_Hitbox.Caster = self;
	obj_Hitbox.StatsSet = true;
}

ShakeCamera(8,2);
}

