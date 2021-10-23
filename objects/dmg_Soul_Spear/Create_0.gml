/// @description Timers and stats
Name = "Soul Spear";

Description = "Made out of a cowardly but healthy soul."

icon = spr_inv_spear;

Tip_X_Distance = 89;
Tip_Y_Distance = 89;

Damage = 5;
CoolTime = 30;
image_angle = point_direction(x, y, mouse_x, mouse_y) -90;
move_towards_point(mouse_x, mouse_y, 4);


