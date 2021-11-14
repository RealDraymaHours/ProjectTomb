/// @description Parry Spin
if Active
{
	state = "AIRSTUNNED";
	repeat(10)
	{
		instance_create(other.x, other.y, obj_ParryHit);	
	}
	oPlayer.Parry = false;
	Active = false; 
}