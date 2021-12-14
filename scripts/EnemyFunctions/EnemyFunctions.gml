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