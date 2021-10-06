/// @description parry
if Caster.IsAttacking = true
{
	Caster.Stunned = true;
	repeat(10)
	{
		instance_create(other.x, other.y, obj_ParryHit);	
	}
	instance_destroy();
}
