var xp, yp;
xp = x + Tip_X_Distance*cos(degtorad(other.image_angle+90));
yp = y - Tip_Y_Distance*sin(degtorad(other.image_angle+90));	

repeat(10)
{
	instance_create(xp, yp, obj_FireHit1);
	instance_create(xp, yp, obj_FireHit2);
}

instance_destroy();