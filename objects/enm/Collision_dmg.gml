/// @description 
if ((!Staggered) && (other.Active))
{

	if (timeline_running == false)
	{
		timeline_index = tml_damage_effect;
		timeline_position = 0;
		timeline_running = true;
	}

	Health = (Health - other.Damage);
	alarm[11] = StaggerTime;
	Staggered = true;

	if (other.Break > Poise)
	{
		Moving = false;
		alarm[0] = 20;
		Knockback = true;
		KnockbackDirection = other.KnockbackDirection;
		KnockbackStrenght = other.KnockbackStrenght;
		alarm[1] = other.KnockbackTime;
	}
	
    ShakeCamera(8,2);
	global.Mana += 1;
	
	sound = irandom(2);
	
	repeat(other.Points)
	{
		instance_create(x, y, obj_SoulPointsHit);
	}
	
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
