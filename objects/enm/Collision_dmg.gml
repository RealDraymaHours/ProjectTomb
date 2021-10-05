/// @description 
if Staggered = false
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

    with (oCamera) {
        alarm[0] = 8;
        screenShake = true;
    }
	
	repeat(10)
	{
		var xp, yp;
		xp = other.x + other.Tip_X_Distance*cos(degtorad(image_angle+90));
		yp = other.y - other.Tip_Y_Distance*sin(degtorad(image_angle+90));	
		instance_create_layer(xp, yp, "Effects", obj_SoulHit);
		
	}
}

