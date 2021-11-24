if Health < 1{ state = "DEATH" }
if Staggered
{
	state = "STAGGERED";
}


switch(state)
{
	case("IDLE"):
		image_speed = 0.1
		sprite_index = sMageSoulIdle;
		if distance_to_object(oFolCam) < 250
		{
			if alarm[2] == -1{alarm[2] = 60;}
		}
	break;
	case("CAST"):
		image_speed = 0.1;
		sprite_index = sMageSoulParry;
		instance_create(x,y,obj_Fireball);
		state = "IDLE";
	break;
	case("STAGGERED"):
		image_speed = 0.1;
		sprite_index = sMageSoulParry;
		if alarm[11] == -1{alarm[11] = 20;}
	break;
	case("AIRBORNE"):
		image_speed = 0.1;
		sprite_index = sMageSoulParry;
		if onGround{state = "IDLE";}
	break;
}

if Knockback
{
	move_contact_solid(KnockbackDirection, KnockbackStrenght);
}

if Health < 1
{
	instance_destroy();
}

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