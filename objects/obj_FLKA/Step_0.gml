/// @description Insert description here
// You can write your code in this editor
if !AnimationLock
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

if Health < 1
{
	y = StartY;
	state = "DEATH";
}

switch(state)
{
	case("IDLE"):
	y = StartY;
	if alarm[3] == -1{alarm[3] = 20;}
	break;
	case("CAGE"):
	y = StartY;
	if alarm[0] == -1{
		audio_play_sound(Scream3,10,false);
		if prevCage = 0
		{
			instance_create(ArenaStart + 32, 144, obj_FLKA_TCage);
			instance_create(ArenaStart + 112, 144, obj_FLKA_TCage);		
			instance_create(ArenaStart + 208, 144, obj_FLKA_TCage);	
			instance_create(ArenaStart + 304, 144, obj_FLKA_TCage);		
			instance_create(ArenaStart + 400, 144, obj_FLKA_TCage);		
			instance_create(ArenaStart + 496, 144, obj_FLKA_TCage);		
			instance_create(ArenaStart + 592, 144, obj_FLKA_TCage);	
			instance_create(ArenaStart + 688, 144, obj_FLKA_TCage);
			TornadoCage = false;
			sprite_index = spr_FLKA_Rage;
			alarm[0] = 120;
			prevCage = 1;
		}
		else
		{
			instance_create(ArenaStart + 64, 144, obj_FLKA_TCage);
			instance_create(ArenaStart + 160, 144, obj_FLKA_TCage);
			instance_create(ArenaStart + 256, 144, obj_FLKA_TCage);
			instance_create(ArenaStart + 352, 144, obj_FLKA_TCage);
			instance_create(ArenaStart + 448, 144, obj_FLKA_TCage);
			instance_create(ArenaStart + 544, 144, obj_FLKA_TCage);
			instance_create(ArenaStart + 640, 144, obj_FLKA_TCage);
			TornadoCage = false;
			sprite_index = spr_FLKA_Rage;
			alarm[0] = 120;
			prevCage = 0;
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
				move_towards_point(oFolCam.x, StartY - 100, 10);	
				if position_meeting(oFolCam.x, StartY - 100, obj_FLKA)
				{	
					sprite_index = spr_FLKA_Fall;
					hspeed = 0;
					vspeed = 0;
					JumpState = "DOWNWARDS"
				}
			break;
			case("DOWNWARDS"):
				if ((place_meeting(obj_FLKA.x,obj_FLKA.y + 1, obj_InvFloor1)) || (place_meeting(obj_FLKA.x,obj_FLKA.y, obj_InvFloor1)))
				{
					vspeed = 0;
					sprite_index = spr_FLKA_Stomp;
					instance_create(x - 130, 144, obj_FLKA_TCage);
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
		y = StartY;
		
		if TornadoChase
		{
			audio_play_sound(Scream2,10,false);
			Tx1 = ArenaStart - 32;
			Tx2 = ArenaStart + 784;
			
			AnimationLock = true;
			sprite_index = spr_FLKA_Rage;
	
			alarm[1] = 20;
			TornadoChase = false;
		}
	break;
	case("DEATH"):
		y = StartY;
		AnimationLock = true
		image_xscale = 1;
		image_speed = 0.2;
		sprite_index = spr_FLKA_EndIt;
	break;
}

