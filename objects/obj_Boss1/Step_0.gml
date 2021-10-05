/// @description Insert description here
// You can write your code in this editor
if Health = 150
{
	sprite_index = spr_Boss1damage1;
}

if Health = 100
{
		sprite_index = spr_Boss1damage2;
}

if Health = 50
{
		sprite_index = spr_Boss1damage3;
}


if Health = 1
{
	instance_create(710,350,NEXT);
	instance_destroy();
	instance_destroy(obj_BossHand1);
	instance_destroy(obj_BossHand2);
}