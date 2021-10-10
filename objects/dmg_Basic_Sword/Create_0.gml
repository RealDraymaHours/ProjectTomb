/// @description Timers and stats
Name = "Soul Sword";

Description = "Made out of a brave but weak soul."

icon = spr_inv_sword;

Tip_X_Distance = 59;
Tip_Y_Distance = 59;

Damage = 10;
CoolTime = 30;
image_angle = point_direction(x, y, mouse_x, mouse_y) -90;
move_towards_point(mouse_x, mouse_y, 4);


