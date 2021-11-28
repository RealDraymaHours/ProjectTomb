/// @description Parry Spin
if Active
{
	state = "AIRSTUNNED";
	repeat(10)
	{
		instance_create(other.x, other.y, obj_ParryHit);	
	}
	audio_play_sound(PlayerParryWIP,1,false);
	global.Health += 1;
	oPlayer.Parry = false;
	Active = false; 
}