if self.state == "IDLE"
{
	self.state = "WIGGLE";	
	self.Health -= 10;
	
	GettingDamageEffect();
}