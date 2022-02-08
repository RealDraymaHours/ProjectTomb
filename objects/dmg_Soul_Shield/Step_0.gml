if State == "FORWARD"
{
	if ((place_meeting(x,y,oParSolid)) || (place_meeting(x,y,enm)))
	{
		State = "BACK";
		
		repeat(10)
		{
			instance_create(x,y, obj_SoulHit);	
		}
		
	}
	
	if alarm[0] == -1{alarm[0] = 60;}
	
	image_angle += 20;
}
else if State == "BACK"
{
	move_towards_point(oFolCam.x, oFolCam.y, 12);
	
	if place_meeting(x,y,oFolCam)
	{
		instance_destroy();	
		oPlayer.alarm[Timer] = 1;
	}
	
	alarm[0] = 4;
	
	image_angle += 30;
}

oPlayer.CanWarp = false;