if State == "PARRY"
{
	ParryShieldMelee(x,y,other.Caster,other.id);	
	Spirit = instance_create(x,y,dmg_Vengance);
	
	Spirit.TargetInstance = other.Caster.id;
	
	sprite_index = sShield_Spin;
	image_index = 0;
}