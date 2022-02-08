/// @description 
if ((!Staggered) && (other.Active))
{

	GettingDamageEffect();

	Health = (Health - other.Damage);
	alarm[11] = StaggerTime;
	Staggered = true;

	if (other.Break > Poise)
	{
		Moving = false;
		alarm[0] = 20;
		Knockback = true;
		KnockbackDirection = other.KnockbackDirection;
		KnockbackStrenght = other.KnockbackStrenght;
		alarm[1] = other.KnockbackTime;
	}
	
    
	global.Mana += 1;
	
	
	
	repeat(other.Damage)
	{
		instance_create(x, y, obj_SoulPointsHit);
	}
	

}
