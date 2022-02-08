if state = "WINDUP"
{
	if sprite_index = sFungalBirdWindUp
	{
		sprite_index = sFungalBirdAttack;
	}
	else
	{
		state = "ATTACK";	
	}
}