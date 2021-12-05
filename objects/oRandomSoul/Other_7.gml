if state = "ATTACKING"
{
	state = "ATTACK";
	IsAttacking = false;
}
else if state = "ATTACK"
{
	state = "COOLDOWN";
	IsAttacking = false;
}

