// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GravityBeginStep(MyID){

var temp;

// Check if you were onGround previous frame
temp = onGround;

onGround = OnGround();

// Squash sprite during jump landing
if (!temp && onGround) {
    if (v >= 0) { 
        MyID.yscale = 0.66;
        MyID.xscale = 1.33;  
    }
}

// Update relative collision
MyID.cLeft  = place_meeting(MyID.x - 1, MyID.y, oBlock); 
MyID.cRight = place_meeting(MyID.x + 1, MyID.y, oBlock); 
MyID.cAbove = place_meeting(MyID.x, MyID.y - 1, oParSolid);


}