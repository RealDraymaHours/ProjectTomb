if ((other.state != "MUSHROOM") && (other.state != "WIGGLE") && (other.Active) && state = "IDLE")
{
	state = "WIGGLE";	
	Health -= 10;
	
	GettingDamageEffect();
}