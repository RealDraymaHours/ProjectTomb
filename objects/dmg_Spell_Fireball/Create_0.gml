/// @description make smaller
depth = -98;
MyLight = c_red;
X = 0.15;
Y = 0.15;
Intensity = 0.3;


Tip_X_Distance = 1;
Tip_Y_Distance = 1;

Active = true;
Damage = 30;
Cost = 6;

KnockbackTime = 2;
KnockbackStrenght = 5;
Break = 1;


//partile
part_system = part_system_create();

part_emitter = part_emitter_create(part_system);

part_type = part_type_create();
part_type_sprite(part_type, spr_Light_White, false, false, false) //false 1 is if animated, false 2 is if streched, false 3 is random subimages
part_type_alpha3(part_type, 0,1,0); // 0 fade in to 1 then fade out to 0 again
part_type_color3(part_type, c_white, c_yellow, c_red);

part_type_life(part_type, 20,20)//game_get_speed(gamespeed_fps), game_get_speed(gamespeed_fps)*0.0001);
part_type_scale(part_type, 1, 1); 
part_type_gravity(part_type, 0.05, 90); //0.15 = speed going up

Tip_X_Distance = 0;
Tip_Y_Distance = 0;

if global.Mana >= Cost
{
	image_angle = point_direction(x, y, oFolCam.x, oFolCam.y) -90;
	move_towards_point(mouse_x, mouse_y, 8);
	global.Mana -= Cost;
}
else
{
	instance_destroy();
}

