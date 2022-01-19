/// @description Parry Spin
if Active
{
	
	ParryMeleeActive(other.x, other.y, self);
	Stunned = false;
	state = "AIRSTUNNED";
	Active = false; 
}