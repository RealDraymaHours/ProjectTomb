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
			image_speed = 0.1;
			sprite_index = sRandomSoulParry;
		break;
		case("IDLE"):
			IsAttacking = false;
			image_speed = 0.1;
			sprite_index = sRandomSoulIdle;
			if distance_to_object(oFolCam) < 200{state = "RUNNING";}
		break;
		case("AIRBORNE"):
			image_speed = 0.1;
			sprite_index = sRandomSoulParry;
			if onGround{state = "IDLE";}
		break;
		case("RUNNING"):
			image_speed = 0.5;
			sprite_index = sRandomSoulRun;
			dir = sign(oFolCam.x - x);
			h = (dir * 2) * mm;
			v = (min(7,v+0.05));
			if distance_to_object(oFolCam) < 20{image_index = 1; state = "ATTACKING";}
		break;
		case("ATTACKING"):
			if !IsAttacking{image_index = 0;}
			IsAttacking = true;
			image_speed = 0.4;
			h = 0;
			v = 0;
			if Staggered{state = "STAGGERED";}
			sprite_index = sRandomSoulAttacking;
		break;
		case("ATTACK"):
			if !IsAttacking{image_index = 0;}
			IsAttacking = true;
			image_speed = 0.4;
			h = 0;
			v = 0;
			if Staggered{state = "STAGGERED";}
			sprite_index = sRandomSoulAttack;
		break;
		case("COOLDOWN"):
			if alarm[11] == -1{alarm[11] = 60;}
			h = 0;
			v = 0;
			image_speed = 0.1;
			sprite_index = sRandomSoulParry;
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
	sprite_index = sRandomSoulParry;
}
if Knockback
{
	move_contact_solid(KnockbackDirection, KnockbackStrenght);
}


if Health < 1
{
	instance_destroy();
}