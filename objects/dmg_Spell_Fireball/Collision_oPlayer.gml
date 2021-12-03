if global.Staggered = false
{
	global.Health -= 1;
	    with (oCamera) {
        alarm[0] = 8;
        screenShake = true;
    }
	
		repeat(10)
	{

		instance_create(other.x, other.y, obj_SoulHit);
		instance_create(other.x, other.y, obj_FireHit1);
		instance_create(other.x, other.y, obj_FireHit2);
		
	}
	
	
	global.Staggered = true;
}
