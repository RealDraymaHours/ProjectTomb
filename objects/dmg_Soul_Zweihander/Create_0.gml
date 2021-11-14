/// @description Timers and stats
Tip_X_Distance = 93;
Tip_Y_Distance = 93;

Active = true;
Damage = 20;
CoolTime = 45;
Combo = 0;

Break = 10;

depth = -20;

if global.LeftItem = dmg_Soul_Zweihander
{
	Combo = global.LeftCombo;
}
else
{
	Combo = global.RightCombo;
}


if mouse_x < oPlayer.x
{
	image_angle = 180;
	image_yscale = -1;
}
else
{
	image_angle = 0  ;
}

if oPlayer.onGround
{
		switch(Combo)
	{
		case(0):
			sprite_index = sSZ_1;
			KnockbackDirection = 90;
			KnockbackStrenght = 20;
			KnockbackTime = 10;
		break;
		case(1):
			sprite_index = sSZ_2;
			KnockbackDirection = 270;
			KnockbackStrenght = 20;
			KnockbackTime = 10;
		break;	
	}
}
else
{
		CoolTime = 30;
	
		sprite_index = sSZ_2;
		KnockbackDirection = 270;
		KnockbackStrenght = 20;
		KnockbackTime = 10;
		
		if global.LeftItem = dmg_Soul_Zweihander
		{
			global.LeftCombo = 1;
		}
		else
		{
			global.RightCombo = 1;
		}
}

