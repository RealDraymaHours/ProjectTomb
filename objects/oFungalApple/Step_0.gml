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
		case("STAGGERED"):
			sprite_index = sFungalAppleStaggered;
		break;
		case("IDLE"):
			Active = false;
			sprite_index = sFungalAppleIdle;
			if distance_to_object(oFolCam) < 100{state = "TRANSFORM"; image_index = 0;}
		break;
		case("TRANSFORM"):
			sprite_index = sFungalAppleStand;
		break;
		case("RUNNING"):
			sprite_index = sFungalAppleRun;
			dir = sign(oFolCam.x - x);
			h = (dir * 2) * mm;
			v = (min(7,v+0.05));
			//if distance_to_object(oFolCam) < 20{image_index = 1; state = "ATTACKING";}
		break;
		case("AIRBORNE"):
			sprite_index = sFungalAppleStaggered;
			if onGround{state = "RUNNING";}
		break;

	}
}
else
{
	if !AlarmSet
	{
		alarm[2] = 120;	
		AlarmSet = true;
	}
	h = 0;
	v = 0;
	image_speed = 0.5;
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