instance_destroy(oPlayerFinish);

// Movement speed
h = 0;
v = 0;

//sprite
sIdle = sPlayerIdle;
sRun = sPlayerRun;
sJumpD = sPlayerJumpD;
sJumpM = sPlayerJumpM;
sJumpU = sPlayerJumpU;
sSlide = sPlayerSlide;
sParry = sPlayerParry;

//Light
MyLight = c_white;
X = 0.5;
Y = 0.5;
Intensity = 0;
depth = 2;

//Abilities
Parry = false;
CanWarp = false;
Warping = false;


//Combo Stuff
CanLeft = true;
CanRight = true;
Can1 = true;
Can2 = true;
IsAttacking = false;

// Collision below
onGround = false;

// Camera ////////////////////////////////////////////////////
if (!instance_exists(oCamera))
    instance_create(x, y, oCamera);
    
// Initial camera position  
__view_set( e__VW.XView, 0, max(0, min(x - __view_get( e__VW.WPort, 0 ) * 0.5, room_width  - __view_get( e__VW.WPort, 0 ))) );
__view_set( e__VW.YView, 0, max(0, min(y - __view_get( e__VW.HPort, 0 ) * 0.5 - 16, room_height - __view_get( e__VW.HPort, 0 ))) );

// Movement Vars //////////////////////////////////////////////////////////////

// Adjust THIS to adjust overall player speed
m = 0.6;

// Acceleration + friction
groundAccel = 1.0  * m;
groundFric  = 100.0  * m;
airAccel    = 0.75 * m;
airFric     = 100.0 * m;

// Max movement speeds
maxH        = 5.5  * m;
maxV        = 9.0  * m;

jumpHeight  = 8.0  * m;
gravRise    = 0.5  * m;
gravFall    = 0.5  * m;
gravSlide   = 0.0 * m;

//camDist     = 24.0; // (later versions)

// Frames prior to being able to push off of wall slide with arrow keys (doesn't affect wall jump)
clingTime   = 4.0  * m;
///////////////////////////////////////////////////////////////////////////////

// State Info /////////////////////////////////////////////////////////////////
// States
IDLE     = 10;
RUN      = 11;
JUMP     = 12;
DEATH	 = 13;
ACTIVE	 = 14;

// Facings
RIGHT =  1;
LEFT  = -1;

// Initialize properties
state  = IDLE;
facing = image_xscale; // Change xscale in editor to adjust initial facing

// For squash + stretch
xscale = 1;
yscale = 1;
///////////////////////////////////////////////////////////////////////////////

// Misc ///////////////////////////////////////////////////////////////////////

// Relative collision checks
cLeft  = 0;
cRight = 0;
cAbove = 0;

// Wall slide
canStick = true;
sticking = false;

///////////////////////////////////////////////////////////////////////////////


length = 6; //4;
w1 = 3;
w2 = 5; //0;
c1 = c_white
c2 = c_white
a1 = 1;
a2 = 1;
xscatter = 0//6;
yscatter = 1;
xdrift = 0;
ydrift = 5;
trail = TrailCreate(length, x, y);



Staggered = false;



//UI
flash = 0;

//Sound
audio_listener_orientation(0,1,0,0,0,1);



