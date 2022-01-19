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

if Stunned
{
	if state = "COMBO"
	{
		StunnedPoints -= 1;
		Stunned = false;
	}
	else
	{
		StunnedPoints -= 3;
		Stunned = false;
	}
	
	if StunnedPoints < 1
	{
		state = "STUNNED";
	}
	
}

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

switch(state)
{
	case("IDLE"):
		IsAttacking = false;
		sprite_index = sFungalSoldierBase;
		if ((distance_to_object(oFolCam) < 200) && (distance_to_object(oFolCam) > 101)){state = "COMBO";}
		else if (distance_to_object(oFolCam) < 100){state = "SLAM";}
	break;
	case("COMBO"):
		if !IsAttacking{ComboState = "TOP"; image_index = 1; IsAttacking = true; sprite_index = sFungalSoldierComboTop}
	break;
	case("SLAM"):
		if !IsAttacking{ComboState = "SLAM"; image_index = 1; IsAttacking = true; sprite_index = sFungalSoldierSlam;}
	break;
	case("STUNNED"):
		sprite_index = sFungalSoldierStunned;
		if alarm[2] == -1{alarm[2] = 60;}
		ComboState = "NOTHING";
	break;
	case("DEATH"):
		if sprite_index != sFungalSoldierDeath
		{
			sprite_index = sFungalSoldierDeath;
			image_index = 0;
		}
	break;
}

if Health < 1
{
	state = "DEATH";
}