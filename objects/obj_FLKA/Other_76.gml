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
    ShakeCamera(8,2);
}

if (event_data[? "message"] == "Break")
{

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


	