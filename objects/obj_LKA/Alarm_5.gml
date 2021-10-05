/// @description Slash cooldown
SlashCount -= 1;
if SlashCount > 0
{

	if image_xscale = -1
	{
		instance_create(x + 40, y + 60, obj_Hitbox);
		obj_Hitbox.xSize = 101;
		obj_Hitbox.ySize = 44;
		obj_Hitbox.Time = 5;
		obj_Hitbox.StatsSet = true;
	}
	else
	{
		instance_create(x - 140, y + 60, obj_Hitbox);
		obj_Hitbox.xSize = 101;
		obj_Hitbox.ySize = 44;
		obj_Hitbox.Time = 5;
		obj_Hitbox.StatsSet = true;
	}
	if Slash = true
	{
		alarm[5] = 38;
	}
}
