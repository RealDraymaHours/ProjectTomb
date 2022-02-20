if (onGround) {
    tempAccel = groundAccel;
    tempFric  = groundFric;
} else {
    tempAccel = airAccel;
    tempFric  = airFric;
	
	if(state != "STUNNED"){state = "AIRBORNE";}
}

// Stick to wall //////////////////////////////////////////////////////////////
if ((!cRight && !cLeft) || onGround) {
    canStick = true;
    sticking = false;
}   
///////////////////////////////////////////////////////////////////////////////

// Gravity ////////////////////////////////////////////////////////////////////
if Moving
{
	if (!onGround) {
		if ((cLeft || cRight) && v >= 0) {
			// Wall slide
			v = Approach(v, maxV, gravSlide);
		} else {
        
		    // Fall normally
		    if (v < 0)
		        v = Approach(v, maxV, gravRise);
		    else
		        v = Approach(v, maxV, gravFall);
		}
	}
}
else
{
	h = 0;
	v = 0;
}
///////////////////////////////////////////////////////////////////////////////

if Staggered
{
	if alarm[11] == -1{alarm[11] = 20;}
	state = "STAGGERED";
}

if !Stunned
{
	switch (state)
	{
		case("STAGGERED"):
			sprite_index = sFungalAppleStaggered;
		break;
		case("IDLE"):
			Active = false;
			h = 0;
			v = 0;
			sprite_index = sForestBirdIdle;

			if distance_to_object(oFolCam) < 80{state = "WINDUP"; image_index = 0;}
		break;
		case("WINDUP"):
			sprite_index = sForestBirdCharge;
			i = irandom(1);
			
			switch(i)
			{
				case(0):
					state = "PARRY"
				break;
				
				case(1):
					state = "DASH"
				break;
			}
			
		break;
		case("DASH"):
			Active = false;
			
			if !Active
			{
				sprite_index = sForestBirdCharge;
				PlayerX = oFolCam.x;
				PlayerY = oFolCam.y;
			}
			else
			{
				sprite_index = sForestBirdForward;
				move_towards_point(PlayerX,PlayerY,2);
			}			
		break;
		case("PARRY"):
			sprite_index = sForestBirdParry;
		break;
		case("STUNNED"):
			if image_xscale = 1
			{
				hspeed = -4;
				vspeed = 4;
				image_angle += 20;
			}
			else
			{
				hspeed = 4;
				vspeed = 4;
				image_angle -= 20;
			}
					
			if alarm[3] == -1{alarm[3] = 10; hspeed = 0; vspeed = 0;}
		break;

	}
}
else
{
		if image_xscale = 1
		{
			hspeed = -4;
			vspeed = -4;
			image_angle += 20;
		}
		else
		{
			hspeed = 4;
			vspeed = -4;
			image_angle -= 20;
		}
		
		if alarm[2] == -1{alarm[2] = 20; hspeed = 0; vspeed = 0;}
	sprite_index = sFungalAppleStaggered;
}
if Knockback
{
	move_contact_solid(KnockbackDirection, KnockbackStrenght);
}


if Health < 1
{
	instance_destroy();
}