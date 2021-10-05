/// @description Rampage
	image_index = 1;

if RampageCount > 1
{
	move = irandom(1);
	
	if move = 0
	{
		RampageTop = true;
		sprite_index = spr_OKA_Top_Swing;
		alarm[4] = 16;
	}
	else
	{
		RampageTop = false;
		sprite_index = spr_OKA_Bottom_Swing;
		alarm[4] = 16;
	}
}
else
{
	alarm[2] = 1;
}
