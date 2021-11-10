/// @description Insert description here
// You can write your code in this editor
if ((Active) && (!global.Staggered))
{
	global.Health -= 1;
	    with (oCamera) {
        alarm[0] = 8;
        screenShake = true;
    }
	
		repeat(10)
	{

		instance_create(other.x, other.y, obj_SoulHit);
		
	}
	
	
	global.Staggered = true;
}