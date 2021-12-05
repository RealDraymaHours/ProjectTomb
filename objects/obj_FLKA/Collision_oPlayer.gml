if ((!global.Staggered) && (Active))
{
	DamagePlayer(other.x,other.y);
}


if((state = "DEATH")&&(mouse_check_button_released(mb_left)) && (Execute))
{
	y = StartY;
	instance_destroy(dmg);
	instance_create(other.x,other.y,oPlayerFinish);
	oPlayerFinish.SceneX = x- 52;
	oPlayerFinish.SceneY = y;
	oPlayerFinish.X = x - 115;
	oPlayerFinish.Y = y + 15 ;
	oPlayerFinish.Scene = oOKAFinish;
	oPlayerFinish.Caster = self;
	oPlayerFinish.Rotation = 4.5;
	oPlayerFinish.FinalAngle = 90;
}