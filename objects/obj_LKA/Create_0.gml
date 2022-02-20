/// @description Start animation and triggers
alarm[0] = 240

AnimationLock = false;
move = 0;

Health = 120;
StaggerTime = 20;
Staggered = false;
Stunned = false;
Poise = 100;

CloseToPlayer = false;
Active = false;
state = "";
prevState = "";
SpinState = "START";

Idle = false;

SlashCount = 7;
Slash = false;
StartSlashing = false;
SlashCooldown = false;

IsAttacking = false;

SpinStart = false;
Spinning = false;
Spin = false;
CurrentPlayerX = 0;
CurrentPlayerY = 0;


ScreamStart = false;
Scream = false;

Tantrum = false;

StartY = y;
StartX = 0;
ArenaStart = StartX - 384;
ArenaEnd =  StartX + 384;


Knockback = false;
KnockbackDirection = 0;
KnockbackStrenght = 0;
KnockbackTime = 0;

audio_stop_all();
audio_play_sound(OKA2,10,true);