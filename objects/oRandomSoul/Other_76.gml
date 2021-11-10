if (event_data[? "message"] == "RandomSoulAttack")
{
	/// @description Slash hitbox
if image_xscale = 1
{
	instance_create(x + 10, y -32, obj_Hitbox);
	obj_Hitbox.xSize = 60;
	obj_Hitbox.ySize = 32;
	obj_Hitbox.Time = 5;
		obj_Hitbox.Caster = self;
	obj_Hitbox.StatsSet = true;
}
else
{
	instance_create(x - 80, y -32, obj_Hitbox);
	obj_Hitbox.xSize = 60;
	obj_Hitbox.ySize = 32;
	obj_Hitbox.Time = 5;
	obj_Hitbox.Caster = self;
	obj_Hitbox.StatsSet = true;
}
}