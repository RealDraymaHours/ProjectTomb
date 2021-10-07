/// @description Insert description here
// You can write your code in this editor

if HeadSlam = true
{
	if !(place_meeting(x,y + 1, obj_InvFloor1))
	{
		sprite_index = spr_FLKA_Jump;
		move_towards_point(384, 16, 10);
	}
	else
	{
		vspeed = 0;
		hspeed = 0;
		image_yscale = -1;
		sprite_index = spr_FLKA_HeadSlamming;
		HeadSlam = false;
	}
	

}

if SuperJump = true
{
	if vspeed = 9
	{
		if place_meeting(obj_FLKA.x,obj_FLKA.y + 1, obj_InvFloor1)
		{
			if (vspeed != 0)
			{
				alarm[2] = 10;
			}
			
			vspeed = 0;
			sprite_index = spr_FLKA_Stomp;
			instance_create(x - 130, -16, obj_FLKA_TCage);
			obj_FLKA_Tornado.image_xscale = 4;
			Staggered = false;
			alarm[0] = 10;
		}
	}
	

	if Downwards = false
	{
		Staggered = true;
		sprite_index = spr_FLKA_Jump
		move_towards_point(oPlayer.x, oPlayer.y - 300, 10);		
	}
	
	if position_meeting(oPlayer.x, oPlayer.y - 300, obj_FLKA)
	{	
		if Downwards = false
		{
			draw_text(200,200,Downwards);
			Downwards = true;
			sprite_index = spr_FLKA_Fall;
			hspeed = 0;
			vspeed = 0;
		}
	}
}

if TornadoChase = true
{
	CurrentPlayerX = oPlayer.x;
	sprite_index = spr_FLKA_Rage;

	if CurrentPlayerX > 400
	{
		ChaseSwitch = 0;
	}
	else
	{
		ChaseSwitch = 1;
	}
	
	alarm[1] = 20;
	TornadoChase = false;
	ChaseActive = true;
}
