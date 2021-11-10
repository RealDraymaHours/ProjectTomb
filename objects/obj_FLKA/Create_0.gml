/// @description Start animation and triggers
AnimationLock = false;
move = 0;

CurrentPlayerX = 0;
CurrentPlayerY = 0;

state = "";
JumpState = "JUMP";

Health = 200;
StaggerTime = 20;
Staggered = false;
Stunned = false;
IsAttacking = false;
Poise = 100;
Active = false;

SuperJump = false;
Downwards = false;

TornadoChase = false;
Tx1 = -32;
Tx2 = 784;
CurrentChase = 0;
ChaseSwitch = 0;
ChaseActive = false;

TornadoCage = false;

Knockback = false;
KnockbackDirection = 0;
KnockbackStrenght = 0;
KnockbackTime = 0;