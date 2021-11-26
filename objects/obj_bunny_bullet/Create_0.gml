/// @description Insert description here
// You can write your code in this editor
switch(global.Armor)
{
	case("Base"):
	sprite_index = sPlayerDash;
	break;
	
	case("Knight"):
	sprite_index = sKnightPlayerDash
	break;
	
	case("Mage"):
	sprite_index = sPlayerDash
	break;
}

depth = 2;
audio_play_sound(PlayerDash1,1,false);
D = false;
alarm[0] = 10;

if mouse_x > x
{
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}
else
{
	image_angle = point_direction(x, y, mouse_x, mouse_y);
	image_yscale = -1;
}

move_towards_point(mouse_x,mouse_y,12);
MyLight = c_white;
X = 0.5;
Y = 0.5;
Intensity = 0;

oPlayer.CanWarp = false;
global.BunnyBulletActive = true;


if global.Staggered
{
	image_blend = c_purple;
}