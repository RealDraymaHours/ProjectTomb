/// @description get back to idle
sprite_index = spr_OKA_Idle;

state = "IDLE";
JumpState = "JUMP"
Active = false;

Stunned = false;
Downwards = false;
Rampage = false;
RampageCount = 0;
IsAttacking = false;

AnimationLock = false;
CloseToPlayer = false;

vspeed = 0;
hspeed = 0;

alarm[0] = 60;