/// @description triggers
StartY = y;
StartX = x;

ArenaStart = StartX - 384;
ArenaEnd =  StartX + 384;

Health = 200;
Staggered = false;
StaggerTime = 20;
Stunned = false;
Active = false;

Idle = true;

state = "IDLE";
JumpState = "JUMP";

RampageCount = 0;
RampageTop = true;
Rampage = false;

AnimationLock = false;
CloseToPlayer = false;

Death = false;

Knockback = false;
KnockbackDirection = 0;
KnockbackStrenght = 0;
KnockbackTime = 0;
Poise = 100;

instance_create(ArenaStart , 350, oOKABarrier);
instance_create(ArenaEnd , 350, oOKABarrier);
oOKABarrier.image_yscale = 20;