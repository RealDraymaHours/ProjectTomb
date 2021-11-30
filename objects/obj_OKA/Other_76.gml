/// @description hitboxes

if (event_data[? "message"] == "Create_Hitbox")
{
	switch(irandom(2))
	{
		case(0):
			audio_play_sound(OKA_Slash1,10,false);
		break;
		case(1):
			audio_play_sound(OKA_Slash2,10,false);
		break;
		case(2):
			audio_play_sound(OKA_Slash3,10,false);
		break;
	}
if image_xscale = -1
{
	instance_create(x + 30, y, obj_Hitbox);
	obj_Hitbox.xSize = 101;
	obj_Hitbox.ySize = 104;
	obj_Hitbox.Time = 5;
	obj_Hitbox.Caster = self;
	obj_Hitbox.StatsSet = true;
}
else
{
	instance_create(x - 130, y, obj_Hitbox);
	obj_Hitbox.xSize = 101;
	obj_Hitbox.ySize = 104;
	obj_Hitbox.Time = 5;
	obj_Hitbox.Caster = self;
	obj_Hitbox.StatsSet = true;
}

ShakeCamera(8,2);
}

