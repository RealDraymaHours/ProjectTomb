// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ParryProjectile(mx,my,sx,sy){
var xp, yp;
xp = mx + Tip_X_Distance*cos(degtorad(other.image_angle+90));
yp = my - Tip_Y_Distance*sin(degtorad(other.image_angle+90));	

repeat(20)
{
	instance_create(xp, yp, obj_ParryHit);
}

audio_play_sound(PlayerParryWIP,1,false);

oPlayer.Parry = false;
move_towards_point(sx,sy,8);
Active= true;
}