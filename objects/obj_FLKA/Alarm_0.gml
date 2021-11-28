/// @description Back to idle
sprite_index = spr_FLKA_Idle;
image_yscale = 1;
y = StartY;

CurrentPlayerX = 0;
CurrentPlayerY = 0;

state = "IDLE";
JumpState = "JUMP";

Stunned = false;
IsAttacking = false;


SuperJump = false;
Downwards = false;

TornadoChase = true;
Tx1 = ArenaStart - 32;
Tx2 = ArenaStart + 784;
CurrentChase = 0;
ChaseSwitch = 0;
ChaseActive = false;

AnimationLock = false;
TornadoCage = false;

