/// @description 
if ((!Staggered) && (other.Active))
{
		//audio_play_sound(PlayerHit1,1,false);

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
			var xp, yp;
		xp = x; //+ other.Tip_X_Distance*cos(degtorad(other.image_angle+90));
		yp = y; //- other.Tip_Y_Distance*sin(degtorad(other.image_angle+90));	
	
	repeat(10)
	{

		instance_create(xp, yp, obj_SoulHit);
		
	}
	
	
	if global.Mana != global.MaxMana
	{
		global.Mana += 1;
	}
	
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
