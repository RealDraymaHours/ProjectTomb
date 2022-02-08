if ((State == "PARRY") && (other.Active) && (other.Health > 1))
{

	ParryShieldMeleeActive(x,y, other.id);	
	sprite_index = sShield_Spin;
	image_index = 0;
	
	if other.state == "MUSHROOM"
	{
		instance_destroy(other);	
	}
	else
	{
		Spirit = instance_create(x,y,dmg_Vengance);	
		Spirit.TargetInstance = other.id;
	
	}

}