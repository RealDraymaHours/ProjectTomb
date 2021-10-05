/// @description Insert description here
// You can write your code in this editor
if Health = 14
{
	sprite_index = spr_GoombaHurt1;
}

if Health = 8
{
		sprite_index = spr_GoombaHurt2;
}

if Health = 4
{
		sprite_index = spr_GoombaHurt3;
}

if Health = 1
{
	instance_destroy();
}