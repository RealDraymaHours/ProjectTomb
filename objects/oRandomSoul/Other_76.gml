if (event_data[? "message"] == "RandomSoulAttack")
{
	/// @description Slash hitbox
if state = "ATTACK"
{
	audio_play_sound(PlayerSoulWeapon1,1,false);
	if image_xscale = 1
	{
		instance_create(x + 10, y -32, obj_Hitbox);
		obj_Hitbox.xSize = 60;
		obj_Hitbox.ySize = 62;
		obj_Hitbox.Time = 5;
		obj_Hitbox.Caster = self;
		obj_Hitbox.StatsSet = true;
	}
	else
	{
		instance_create(x - 70, y -32, obj_Hitbox);
		obj_Hitbox.xSize = 60;
		obj_Hitbox.ySize = 62;
		obj_Hitbox.Time = 5;
		obj_Hitbox.Caster = self;
		obj_Hitbox.StatsSet = true;
	}
}

}