/// @description
if (event_data[? "message"] == "Spawn_Done")
{
	sprite_index = spr_FLKA_Idle;
	alarm[0] = 20;
}

if (event_data[? "message"] == "Falling")
{
	sprite_index = spr_FLKA_Falling;
	vspeed = 9;

}

if (event_data[? "message"] == "Screen_Shake")
{
		switch(irandom(2))
	{
		case(0):
			audio_play_sound(OKA_Slash1,10,false);
		break;
			audio_play_sound(OKA_Slash2,10,false);
		case(1):
		break;
			audio_play_sound(OKA_Slash3,10,false);
		case(2):
		break;
	}
	
    ShakeCamera(8,2);
}

if (event_data[? "message"] == "Break")
{
	switch(irandom(2))
	{
		case(0):
			audio_play_sound(OKA_Slash1,10,false);
		break;
			audio_play_sound(OKA_Slash2,10,false);
		case(1):
		break;
			audio_play_sound(OKA_Slash3,10,false);
		case(2):
		break;
	}
    ShakeCamera(8,4);
	//80
	//90
	if image_xscale = 1
	{
		repeat(30)
		{
			instance_create(x-80, y+90, obj_SoulHit);	
		}
	}
	else
	{
		repeat(30)
		{
			instance_create(x+80, y+90, obj_SoulHit);	
		}
	}

}

if (event_data[? "message"] == "Scream")
{

	audio_play_sound(Scream3,10,false);
	ShakeCamera(10,2);
}


	