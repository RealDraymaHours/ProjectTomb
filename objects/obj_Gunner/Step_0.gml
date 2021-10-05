/// @description Insert description here
// You can write your code in this editor

if position_meeting(oPlayer.x, oPlayer.y - 30, obj_Gunner)
{
	hspeed = 0;
	vspeed = 0;
}
else
{
	move_towards_point(oPlayer.x, oPlayer.y - 30, 6);
}