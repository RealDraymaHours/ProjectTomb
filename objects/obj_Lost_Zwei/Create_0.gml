/// @description 
searchThisArray = obj_Inventory.inventory;

lookForThisValue = 7;

for (var i = 0, iLen = array_length_1d(searchThisArray); i < iLen; i++) {
   if (searchThisArray[i] == lookForThisValue) {
       instance_destroy();
       break;
   }
}


Health = 120;
IsAttacking = false;
Staggered = false;
StaggerTime = 10;
Stunned = false;

Stunned = false;
CloseToPlayer = false;
IsAttacking = false;

Knockback = false;
KnockbackDirection = 0;
KnockbackStrenght = 0;
KnockbackTime = 0;
Poise = 100;
AlarmSet = false;
Active = false;
state = "IDLE";

//physics
// Movement speed
h = 0;
v = 0;

// Collision below
onGround = false;
Moving = true;

// Adjust THIS to adjust overall player speed
m = 0.2;

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