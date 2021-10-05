/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y-1,obj_NFloor)
{
    goingdown = true;
	sprite_index = spr_HandDisapear;
	alarm[1] = 1;
}

if (goingdown = false)
{
if position_meeting(oPlayer.x, self.y, self)
{
	hspeed = 0;
	vspeed = 0;
}
else
{
	move_towards_point(oPlayer.x, self.y, 3);
}
}