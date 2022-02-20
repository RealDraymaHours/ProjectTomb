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
			sprite_index = sFungalAppleIdle;
			
			if place_meeting(x+5,y-10,oParSolid){ x -= 10}
			else if place_meeting(x-5,y-10,oParSolid){ x += 10}
			
			if distance_to_object(oFolCam) < 20{state = "TRANSFORM"; Transformed = true; image_index = 0;}
		break;
		case("TRANSFORM"):
			sprite_index = sFungalAppleStand;
		break;
		case("RUNNING"):
			Active = true;
			Transformed = true;
			sprite_index = sFungalAppleRun;
			dir = sign(oFolCam.x - x);
			h = (dir * 4) * mm;
			v = (min(7,v+0.05));
			image_angle = 0;
			if distance_to_object(oFolCam) > 300{state = "IDLE";}
			if image_xscale = 1
			{
				if place_meeting(x+1,y-10,oParSolid){Stunned = true;}				
			}
			else
			{
				if place_meeting(x-1,y-10,oParSolid){Stunned = true;}				
			}

		break;
		case("AIRBORNE"):
			sprite_index = sFungalAppleStaggered;
			if (onGround){ if Transformed{state = "RUNNING";}else{state = "IDLE"}}
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