/// @description Insert description here
// You can write your code in this editor
if (event_data[? "message"] == "Lost_Slasher_Attack")
{
	if (state == "ATTACK") 
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
	
	ShakeCamera(8,2);
	}
	

}

if (event_data[? "message"] == "Destroy_Slasher")
{
	if state == "DEATH"
	{
		instance_create(x,y - 32,obj_Collect_Zweihander);
		instance_destroy();
	}
}
