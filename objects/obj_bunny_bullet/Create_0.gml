/// @description Insert description here
// You can write your code in this editor
depth = -98;

part_system = part_system_create();
part_emitter = part_emitter_create(part_system);

part_type = part_type_create();
part_type_sprite(part_type, spr_Light_White, false, false, false) //false 1 is if animated, false 2 is if streched, false 3 is random subimages
part_type_alpha3(part_type, 0,1,0); // 0 fade in to 1 then fade out to 0 again
part_type_color3(part_type, c_white, c_white, c_gray);

part_type_life(part_type, 20,20)//game_get_speed(gamespeed_fps), game_get_speed(gamespeed_fps)*0.0001);
part_type_scale(part_type, 1, 1); 
part_type_gravity(part_type, 0.05, 90); //0.05 = speed going up

D = false;
alarm[0] = 15;
move_towards_point(mouse_x,mouse_y,8);

MyLight = c_white;
X = 0.5;
Y = 0.5;
Intensity = 0.5;

global.BunnyBulletActive = true;
