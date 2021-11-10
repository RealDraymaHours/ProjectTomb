/// @description Insert description here
// You can write your code in this editor
if AnimationLock = false
{
	if x < oFolCam.x
	{
		image_xscale = -1;
	}
	else
	{
		image_xscale = 1;
	}
}

switch(state)
{
	case("IDLE"):
	if alarm[3] == -1{alarm[3] = 20;}
	break;
	case("CAGE"):
	if alarm[0] == -1{
		if irandom(1) = 0
		{
			instance_create(32, -16, obj_FLKA_TCage);
			instance_create(112, -16, obj_FLKA_TCage);		
			instance_create(208, -16, obj_FLKA_TCage);	
			instance_create(304	, -16, obj_FLKA_TCage);		
			instance_create(400	, -16, obj_FLKA_TCage);		
			instance_create(496	, -16, obj_FLKA_TCage);		
			instance_create(592	, -16, obj_FLKA_TCage);	
			instance_create(688	, -16, obj_FLKA_TCage);
			TornadoCage = false;
			sprite_index = spr_FLKA_Rage;
			alarm[0] = 120;
		}
		else
		{
			instance_create(64, -16, obj_FLKA_TCage);
			instance_create(160, -16, obj_FLKA_TCage);
			instance_create(256	, -16, obj_FLKA_TCage);
			instance_create(352	, -16, obj_FLKA_TCage);
			instance_create(448	, -16, obj_FLKA_TCage);
			instance_create(544	, -16, obj_FLKA_TCage);
			instance_create(640	, -16, obj_FLKA_TCage);
			TornadoCage = false;
			sprite_index = spr_FLKA_Rage;
			alarm[0] = 120;
	}}
	break;
	case("SLAM"):
		AnimationLock = true;
		if !(place_meeting(x,y + 1, obj_NFloor))
		{
			sprite_index = spr_FLKA_Jump;
			move_towards_point(384, 16, 10);
			alarm[2] = 480;
		}
		else
		{
			vspeed = 0;
			hspeed = 0;
			image_yscale = -1;
			sprite_index = spr_FLKA_HeadSlamming;
		}
	break;
	case("JUMP"):
		switch(JumpState)
		{
			case("JUMP"):
				Staggered = true;
				sprite_index = spr_FLKA_Jump
				move_towards_point(oFolCam.x, 130, 10);	
				if position_meeting(oFolCam.x, 130, obj_FLKA)
				{	
					sprite_index = spr_FLKA_Fall;
					hspeed = 0;
					vspeed = 0;
					JumpState = "DOWNWARDS"
				}
			break;
			case("DOWNWARDS"):
				if place_meeting(obj_FLKA.x,obj_FLKA.y + 1, obj_InvFloor1)
				{
					vspeed = 0;
					sprite_index = spr_FLKA_Stomp;
					instance_create(x - 130, -16, obj_FLKA_TCage);
					obj_FLKA.image_yscale = 1;
					obj_FLKA_TCage.image_xscale = 4;
					Staggered = false;
					alarm[0] = 10;
					JumpState = "DONE";
				}
				else
				{
					vspeed = 9;	
				}
			break;
		}
	break;
	case("CHASE"):
		if TornadoChase
		{
			AnimationLock = true;
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
		}
	break;
	case("STUNNED"):
	break;
}

if Health < 1
{
	instance_destroy();
}