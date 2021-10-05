/// @description Health
if Health < 80
{
	sprite_index = spr_Lost_2;
}

if Health < 60
{
		sprite_index = spr_Lost_3;
}

if Health < 30
{
		sprite_index = spr_Lost_4;
}

if Health < 1
{
	instance_destroy();
}



