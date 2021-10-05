HInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
VInput = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if (HInput != 0 or VInput != 0)
{
	dir = point_direction(0,0,HInput, VInput);
	moveX = lengthdir_x(spd, dir);
	moveY = lengthdir_y(spd, dir);
	
	hspeed = moveX;
	vspeed = moveY;
	
	
	
	// Actual collision checks + movement
var i;

// Vertical
for (i = 0; i < abs(vspeed); ++i) {
    if (!place_meeting(x, y + sign(vspeed), oParSolid))
        y += sign(vspeed);
    else {
        vspeed = 0;
        break;
    }
}

// Horizontal
for (i = 0; i < abs(hspeed); ++i) {
    // UP slope
    if (place_meeting(x + sign(hspeed), y, oParSolid) && !place_meeting(x + sign(hspeed), y - 1, oParSolid))
        --y;
    
    // DOWN slope
    if (!place_meeting(x + sign(hspeed), y, oParSolid) && !place_meeting(x + sign(hspeed), y + 1, oParSolid) && place_meeting(x + sign(hspeed), y + 2, oParSolid))
        ++y;      
        
    if (!place_meeting(x + sign(hspeed), y, oParSolid))
        x += sign(hspeed); 
    else {
        // Push block
        if (place_meeting(x + sign(hspeed), y, oPushBlock)) {
            with (instance_place(x + sign(hspeed), y, oPushBlock))
                hspeed = other.hspeed
        } else
            hspeed = 0;
        break;
    }
}
	
if keyboard_check((ord("A")))
{
	image_yscale = -1;
    image_angle = dir
    sprite_index = sPlayerRun;
}
else
{
		image_yscale = 1;
	    image_angle = dir
		sprite_index = sPlayerRun;
}



	
}
else
{
	hspeed = 0;
	vspeed = 0;
	
	sprite_index = sPlayerIdle;


}