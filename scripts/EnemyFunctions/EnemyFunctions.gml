// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function DamagePlayer(otherX, otherY)
{
	audio_play_sound(PlayerDamage,10,false);
	if !global.Staggered
	{
		global.Health -= 1;
		with (oCamera) {
			ShakeCamera(8,8);
		}
	
		repeat(10)
		{
			instance_create(otherX, otherY, obj_SoulHit);	
		}	
		global.Staggered = true;
	}	
}


function SekiroWarning()
{
	instance_create(oFolCam.x, oFolCam.y - 30, oSekiroWarning);	
}

function GettingDamageEffect()
{
	if (timeline_running == false)
	{
		timeline_index = tml_damage_effect;
		timeline_position = 0;
		timeline_running = true;
	}
	
	ShakeCamera(8,2);
	sound = irandom(2);
	switch(sound)
	{
		case(0):
			audio_play_sound(PlayerWeaponHit1,1,false);
		break;
		case(1):
			audio_play_sound(PlayerWeaponHit2,1,false);
		break;
		case(2):
			audio_play_sound(PlayerWeaponHit3,1,false);
		break;
	}
}