// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ParryProjectileReverse(mx,my,sx,sy){
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

function ParryProjectileDestroy(OtherX,OtherY,selfID)
{
	repeat(10)
	{
		instance_create(OtherX, OtherY, obj_ParryHit);	
	}
	audio_play_sound(PlayerParryWIP,1,false);
	oPlayer.Parry = false;
	instance_destroy(selfID);
	
	if global.Mana != global.MaxMana
	{
		global.Mana += 1;	
	}
}

function ParryMelee(otherX,otherY,Caster,selfID)
{
	repeat(10)
	{
		instance_create(other.x, other.y, obj_ParryHit);	
	}

	audio_play_sound(PlayerParryWIP,1,false);
	global.Health += 1;
	Caster.Stunned = true;
	oPlayer.Parry = false;
	//oPlayer.alarm[3] = 1;
	instance_destroy(selfID);
}