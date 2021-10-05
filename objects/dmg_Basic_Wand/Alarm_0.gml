/// @description destroy self
var xp, yp;
xp = x + Tip_X_Distance*cos(degtorad(image_angle+90));
yp = y - Tip_Y_Distance*sin(degtorad(image_angle+90));

instance_create(xp, yp, dmg_Star_Spell);
instance_destroy();
