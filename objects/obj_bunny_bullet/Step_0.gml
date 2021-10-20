/*
dir = point_direction(oPlayer.x,oPlayer.y,mouse_x,mouse_y);
len = point_distance(oPlayer.x,oPlayer.y,mouse_x,mouse_y);
mlen = point_distance(oPlayer.x,oPlayer.y,x,y);

maxdist = 180;

if len > maxdist
{
	if !position_meeting(oPlayer.x +lengthdir_x(maxdist,dir),oPlayer.y +lengthdir_y(maxdist,dir), obj_bunny_bullet)
	{
		move_towards_point(oPlayer.x +lengthdir_x(maxdist,dir),oPlayer.y +lengthdir_y(maxdist,dir), 12);
	}
	else
	{
		vspeed = 0;
		hspeed = 0;
	}
}
else
{
	if !position_meeting(mouse_x,mouse_y,obj_bunny_bullet)
	{

	}
	else
	{
		vspeed = 0;
		hspeed = 0;
	}
}


if mlen > maxdist + 50
{
	instance_destroy();	
}


*/