if Active
{
	sprite_index = spr_Spike_Trap_Active;
	if !Deactivating
	{
		Deactivating = true;
		alarm[0] = 240;
	}
}
else
{
	sprite_index = spr_Spike_Trap;

}