if (onGround) {
    tempAccel = groundAccel;
    tempFric  = groundFric;
} else {
    tempAccel = airAccel;
    tempFric  = airFric;
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
if Stunned
{
	state = "STUNNED";
}

if Staggered
{
	state = "STAGGERED";
}


switch (state)
{
	case("IDLE"):
		sprite_index = spr_Lost_Spear;
		Moving = true;
		h = 0;
		v = (min(7,v+0.05));
		if (distance_to_object(oFolCam) < 96) { state = "CHASE";}
	break;
	case("CHASE"):
		sprite_index = spr_Lost_Spear_Run;
		dir = sign(oFolCam.x - x);
		h = dir * 2;
		if (distance_to_object(oFolCam) > 96) { state = "IDLE";}
		if (distance_to_object(oFolCam) < 32) { state = "ATTACK";}
	break;
	case("ATTACK"):
		h = 0;
		sprite_index = spr_Lost_Spear_Attack;
		if (distance_to_object(oFolCam) > 50) { state = "CHASE";}
	break;
	case("STUNNED"):
		sprite_index = spr_Lost_Spear_Stunned;
		if !(alarm[2] < -1)
		{
			alarm[2] = 120;
		}
	break;
	case("STAGGERED"):
		h = 0;
		v = 0;
		move_contact_solid(KnockbackDirection, KnockbackStrenght);
		Moving = false;
		sprite_index = sPlayerParry;
	break;
	case("DEATH"):
		sprite_index = spr_Lost_Spear_Death;
	break;
}



if Health < 1
{
	state = "DEATH";
}