/// @description destroy self
var xp, yp;
xp = x + 26*cos(degtorad(image_angle+90));
yp = y - 26*sin(degtorad(image_angle+90));

instance_create(xp, yp, dmg_Star_Spell);
instance_destroy();
