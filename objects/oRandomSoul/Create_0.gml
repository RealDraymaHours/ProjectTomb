Health = 60;
IsAttacking = false;
Staggered = false;
StaggerTime = 10;
Stunned = false;

Knockback = false;
KnockbackDirection = 0;
KnockbackStrenght = 0;
KnockbackTime = 0;
Poise = 0;
state = "IDLE"
AlarmSet = false;
Active = false;

//physics
// Movement speed
h = 0;
v = 0;

// Collision below
onGround = false;
Moving = true;

// Adjust THIS to adjust overall player speed
m = 0.2;
mm = 1;

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

// Relative collision checks
cLeft  = 0;
cRight = 0;
cAbove = 0;