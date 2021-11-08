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

switch (state)
{
	case("STAGGERED"):
		sprite_index = spr_GoombaHurt3;
	break;
	case("IDLE"):
		sprite_index = spr_Goomba;
	break;
	case("AIRBORNE"):
		sprite_index = spr_GoombaHurt3;
		if onGround
		{
			state = "IDLE";
		}
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