var xp, yp;
xp = x + Tip_X_Distance*cos(degtorad(other.image_angle+90));
yp = y - Tip_Y_Distance*sin(degtorad(other.image_angle+90));	

repeat(20)
{
	instance_create(xp, yp, obj_ParryHit);
}

oPlayer.Parry = false;
move_towards_point(StartX,StartY,8);
Active= true;