if StartMove
{
	if position_meeting(X,Y,self)
	{ 
		x = X;
		y = Y;
		vspeed = 0;
		hspeed = 0;
		if !instance_exists(Scene)
		{
			instance_create(SceneX,SceneY,Scene);
			instance_destroy(Caster);
			visible = false;
		}
	} 
	else
	{
		move_towards_point(X,Y,4);		
	}
	
	if image_angle != FinalAngle
	{
		image_angle += Rotation;	
	}
	
}