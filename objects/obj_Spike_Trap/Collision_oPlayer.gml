if Active
{
	sprite_index = spr_Spike_Trap_Active;
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
	}
	
	
		global.Staggered = true;
	}
}
else
{
	if !Activating
	{
		Activating = true;			
		alarm[0] = 20;
	}
}
