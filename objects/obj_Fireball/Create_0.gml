/// @description go to player
Tip_X_Distance = -30;
Tip_Y_Distance = -30;

image_angle = point_direction(x, y, oPlayer.x, oPlayer.y) -90;
move_towards_point(oPlayer.x, oPlayer.y, 8);
