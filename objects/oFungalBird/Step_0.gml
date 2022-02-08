if Stunned
{
	state = "STUNNED";
	Stunned = false;
}

if Staggered
{
	state = "STAGGERED";
}

switch(state)
{
	case("IDLE"):
		Active = false;
		attackState = "DOWN";
		hspeed = 0;
		vspeed = 0;
		sprite_index = sFungalBirdIdle;
		speed = 0;
		image_angle = 0;
		if ((distance_to_object(oFolCam) < 130))
		{
			state = "WINDUP"; 
			sprite_index = sFungalBirdWindUp;
			
			if image_xscale = 1
			{
				image_angle = point_direction(self.x, self.y, oFolCam.x, oFolCam.y) ;
			}
			else
			{
				image_angle = point_direction(self.x, self.y, oFolCam.x, oFolCam.y) -180;
			}
			
			CurrentPlayerX = oFolCam.x;
			CurrentPlayerY = oFolCam.y - 32;
			image_index = 0;
		}
	break;
	case("PATROL"):	
		Active = false;
		sprite_index = sFungalBirdIdle;
		if position_meeting(self.x, StartY-5, self)
		{
			state = "IDLE";	
		}
		else
		{
			move_towards_point(self.x, StartY-5,4);			
		}
	break;
	case("WINDUP"):
		
	break;
	case("ATTACK"):
		Active = true;
		sprite_index = sFungalBirdAttack;
		switch(attackState)
		{
			case("DOWN"):
				if ((!position_meeting(CurrentPlayerX, CurrentPlayerY, self) || (!place_meeting(self.x, self.y, oParSolid))))
				{
					move_towards_point(CurrentPlayerX, CurrentPlayerY, 8)
				}
				
				if (position_meeting(CurrentPlayerX, CurrentPlayerY, self))
				{
					attackState = "BACK";
				}
				
				if (place_meeting(self.x, self.y, obj_InvFloor1))
				{
					state = "STUNNED";	
				}
				
			break;
			case("BACK"):
			
				if image_xscale = 1
				{
					image_xscale = 1;
					image_angle += 4;
					direction = image_angle;
				}
				else
				{
					image_xscale = -1;
					image_angle -= 4;
					direction = image_angle - 180;
				}
				
				speed = 8;
				
				if alarm[3] == -1{alarm[3] = 30;}
				
				if (place_meeting(self.x, self.y, obj_InvFloor1))
				{
					state = "STUNNED";	
				}
				
			break;
		}
					
	break;
	case("STUNNED"):
		sprite_index = sFungalBirdStunned;
		
		
		if image_xscale = 1
		{
			hspeed = -4;
			vspeed = -4;
			image_angle -= 20;
		}
		else
		{
			hspeed = 4;
			vspeed = -4;
			image_angle += 20;
		}
		
		if alarm[3] == -1{alarm[3] = 20};
	break;
	case("STAGGERED"):
		if Active
		{
			speed = 0;
		}
			
		Active = false;
		sprite_index = sFungalBirdStunned;
		image_angle += 20;	
		
	break;
}

if Knockback
{
	move_contact_solid(KnockbackDirection, KnockbackStrenght + 6);
}


if Health < 1
{
	instance_destroy();
}