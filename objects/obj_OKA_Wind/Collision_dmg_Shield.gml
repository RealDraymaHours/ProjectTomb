/// @description parry
repeat(10)
{
	instance_create(other.x, other.y, obj_ParryHit);	
}

instance_destroy();

