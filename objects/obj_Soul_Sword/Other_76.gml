if (event_data[? "message"] == "Spear_Death")
{
	if state = "DEATH"
	{
		instance_create(x,y - 32,obj_Collect_Spear);
		instance_destroy();
	}
}


if (event_data[? "message"] == "Spear_Attack")
{
	if image_xscale = -1
	{
		instance_create(x + 40, y, obj_Hitbox);
		obj_Hitbox.xSize = 50;
		obj_Hitbox.ySize = 44;
		obj_Hitbox.Time = 5;
		obj_Hitbox.Caster = self;
		obj_Hitbox.StatsSet = true;
	}
	else
	{
		instance_create(x - 90, y , obj_Hitbox);
		obj_Hitbox.xSize = 50;
		obj_Hitbox.ySize = 44;
		obj_Hitbox.Time = 5;
		obj_Hitbox.Caster = self;
		obj_Hitbox.StatsSet = true;
	}
}