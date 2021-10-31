/// @description 
if ((!Staggered) && (other.Active))
{
		audio_play_sound(PlayerHit1,1,false);

		if (timeline_running == false)
		{
			timeline_index = tml_damage_effect;
			timeline_position = 0;
			timeline_running = true;
		}

Health = (Health - other.Damage);
alarm[11] = StaggerTime;
Staggered = true;

    with (oCamera) {
        alarm[0] = 8;
        screenShake = true;
    }
			var xp, yp;
		xp = other.x + other.Tip_X_Distance*cos(degtorad(other.image_angle+90));
		yp = other.y - other.Tip_Y_Distance*sin(degtorad(other.image_angle+90));	
	
	repeat(10)
	{

		instance_create(xp, yp, obj_SoulHit);
		
	}
}
