/// @description Insert description here
// You can write your code in this editor
if (event_data[? "message"] == "Lost_Slasher_Attack")
{
if ((IsAttacking) && (!Stunned)) 
{
if image_xscale = -1
{
	instance_create(x + 40, y - 60, obj_Hitbox);
	obj_Hitbox.xSize = 141;
	obj_Hitbox.ySize = 120;
	obj_Hitbox.Time = 5;
		obj_Hitbox.Caster = self;
	obj_Hitbox.StatsSet = true;
}
else
{
	instance_create(x - 140, y - 60, obj_Hitbox);
	obj_Hitbox.xSize = 141;
	obj_Hitbox.ySize = 120;
	obj_Hitbox.Time = 5;
	obj_Hitbox.Caster = self;
	obj_Hitbox.StatsSet = true;
}
}
alarm[1] = 30;
}

if (event_data[? "message"] == "Destroy_Slasher")
{
	if Death
	{
		instance_create(x,y - 32,obj_Collect_Zweihander);
		instance_destroy();
	}
}
