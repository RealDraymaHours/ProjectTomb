/// @description Back to idle

sprite_index = spr_LKA_Idle;

AnimationLock = false;

CloseToPlayer = false;

SlashCount = 7;
Slash = false;
StartSlashing = false;
SlashCooldown = false;

SpinStart = false;
Spinning = false;
Spin = false;
CurrentPlayerX = 0;
CurrentPlayerY = 0;


ScreamStart = false;
Scream = false;


vspeed = 0;
hspeed = 0;

image_angle = 0;
if (y != 293)
{
	y = 293;
}

alarm[6] = 60;