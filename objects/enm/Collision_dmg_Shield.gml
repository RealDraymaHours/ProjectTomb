/// @description Parry
Stunned = true;
alarm[10] = StunnedTime;
repeat(10)
{

	instance_create(other.x, other.y, obj_ParryHit);
		
}
