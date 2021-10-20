// init position, between mouse and player
dir = point_direction(oPlayer.x,oPlayer.y,mouse_x,mouse_y);
len = point_distance(oPlayer.x,oPlayer.y,mouse_x,mouse_y);

x = oPlayer.x +lengthdir_x(len/2,dir);
y = oPlayer.y +lengthdir_y(len/2,dir);

// keeping circular distance to player
dir = point_direction(oPlayer.x,oPlayer.y,x,y);
len = point_distance(oPlayer.x,oPlayer.y,x,y);
maxdist = 80;

if len > maxdist
{
x = oPlayer.x +lengthdir_x(maxdist,dir);
y = oPlayer.y +lengthdir_y(maxdist,dir);
}

// view centering, focus between both objects
//view_xview[0] = (x+oPlayer.x)/2 -(view_wview[0]/2);
//view_yview[0] = (y+oPlayer.y)/2 -(view_hview[0]/2);