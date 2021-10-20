/// @description Insert description here
// You can write your code in this editor
// init position, between mouse and player

dir = point_direction(oPlayer.x,oPlayer.y,mouse_x,mouse_y);
len = point_distance(oPlayer.x,oPlayer.y,mouse_x,mouse_y);
mlen = point_distance(oPlayer.x,oPlayer.y,x,y);

x = mouse_x;
y= mouse_y;

//x = oPlayer.x +lengthdir_x(len/2,dir);
//y = oPlayer.y +lengthdir_y(len/2,dir);

// keeping circular distance to player
dir = point_direction(oPlayer.x,oPlayer.y,x,y);
len = point_distance(oPlayer.x,oPlayer.y,x,y);
maxdist = 180;

if len > maxdist
{
	x = oPlayer.x +lengthdir_x(maxdist,dir);
	y = oPlayer.y +lengthdir_y(maxdist,dir);
}

if mlen > maxdist + 10
{
	instance_destroy();	
}
move_bounce_solid(1);

