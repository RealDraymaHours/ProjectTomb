if (event_data[? "message"] == "Shake")
{
	ShakeCamera(8,2);
	
	switch(Slash)
	{
		case(0):
		audio_play_sound(PlayerParryWIP,10,false);
		repeat(30)
		{
			instance_create(x+6, y-31, obj_SoulHit);	
		}
		break;
		case(1):
		audio_play_sound(PlayerParryWIP,10,false);
		repeat(30)
		{
			
			instance_create(x-33, y+50, obj_SoulHit);	
		}
		break;
		case(2):
		audio_play_sound(PlayerParryWIP,10,false);
		repeat(30)
		{
			instance_create(x-29, y-+ 34, obj_SoulHit);	
		}
		break;
		case(3):
		oPlayerFinish.X = x + 95;
		audio_play_sound(PlayerWeaponHit3,10,false);
		repeat(30)
		{
			instance_create(x-13, y + 32, obj_SoulHit);	
		}
		break;
		case(4):
		/*
		audio_play_sound(PlayerWeaponHit2,10,false);
		repeat(30)
		{
			instance_create(x+114, y+87, obj_SoulHit);	
		}
		*/
		break;
		case(5):
		audio_play_sound(PlayerWeaponHit1,10,false);
		repeat(50)
		{
			instance_create(x+120, y+87, obj_SoulHit);	
		}
		break;
	}
	
	Slash += 1;
}

if (event_data[? "message"] == "SlowShake")
{
	audio_play_sound(Scream1,10,false);
	ShakeCamera(20,1);
}

if (event_data[? "message"] == "SpawnPlayer")
{
	instance_create(x + 135,y + 5,oPlayer);
	oPlayer.visible = true;
}






