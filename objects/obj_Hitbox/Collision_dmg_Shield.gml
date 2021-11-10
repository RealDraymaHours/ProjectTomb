/// @description parry
repeat(10)
{
	instance_create(other.x, other.y, obj_ParryHit);	
}

	global.Health += 1;
	Caster.Stunned = true;
	oPlayer.Parry = false;
	//oPlayer.alarm[3] = 1;
	instance_destroy();

