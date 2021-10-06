/// @description parry
repeat(10)
{
	instance_create(other.x, other.y, obj_ParryHit);	
}

if Caster.IsAttacking = true
{
	Caster.Stunned = true;
	oPlayer.Parry = false;
	instance_destroy();
}
