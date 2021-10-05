move_bounce_solid(1);
if Health = 60
{
	sprite_index = spr_SpooksHurt1;
}

if Health = 40
{
		sprite_index = spr_SpooksHurt2;
}

if Health = 20
{
		sprite_index = spr_SpooksHurt3;
}

if Health = 1
{
	instance_destroy();
}

mp_potential_step(oPlayer.x, oPlayer.y, 2, false);