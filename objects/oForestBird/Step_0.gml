if (onGround) {
    tempAccel = groundAccel;
    tempFric  = groundFric;
} else {
    tempAccel = airAccel;
    tempFric  = airFric;
	state = "AIRBORNE";
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

if !Stunned
{
	switch (state)
	{
		case("IDLE"):
			image_yscale = 1;
			Active = false;
			h = 0;
			v = 0;
			sprite_index = sForestBirdIdle;
			if (distance_to_object(oFolCam) > 20){state = "WINDUP"; image_index = 0;}
		break;
		case("WINDUP"):
			sprite_index = sForestBirdCharge;		
		break;
		case("DASH"):
			sprite_index = sForestBirdBash;		
		break;
		case("FORWARD"):
			sprite_index = sForestBirdForward;

			image_angle = point_direction(self.x, self.y, oFolCam.x, oFolCam.y) ;
			image_yscale = 1;


			dirX = sign(oFolCam.x - x);
			dirY = sign(oFolCam.y + y);
			
			h = (dirX * 2);
			v = (dirY * 2);
			if alarm[3] == -1{alarm[3] = 20;}
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
		case("AIRBORNE"):
			if onGround{state = "IDLE";}
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