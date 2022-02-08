if ((instance_exists(TargetInstance)) && (MoveToEnemy))
{
	move_towards_point(TargetInstance.x,TargetInstance.y,8);
	
	if place_meeting(x,y, TargetInstance)
	{
		if Active{ instance_destroy();}
			
		
		Active = true;
		
		if x > TargetInstance.x
		{
			KnockbackDirection = 0;
		}
		else
		{
			KnockbackDirection = 180;
		}

		
		
		
	}
}
else if MoveToEnemy	
{
	repeat(5)
	{
		instance_create(x, y, obj_SoulPointsHit);
	}
	
	instance_destroy(self);
}

image_angle = direction;