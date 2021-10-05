/// @description Insert description here
// You can write your code in this editor


if(Triggered = true)
{
	move_towards_point(oPlayer.x,y,5);
	if Health = 40
		{
			sprite_index = spr_Lost_Runner_1;
		}
		else if Health < 40
		{
			sprite_index = spr_Lost_Runner_2;
		}
		else if Health < 30
		{
			sprite_index = spr_Lost_Runner_3;
		}
		else if Health < 20
		{
			sprite_index = spr_Lost_Runner_4;
		}
		else if Health < 1
		{
			instance_destroy();
		}



if(hspeed = 5)
{
	image_xscale = -1;
}
else
{
	image_xscale = 1;
}

}
else 
{
	if Change = false
	{
		if Health = 40
		{
			sprite_index = spr_Lost_1;
		}
		else if Health < 40
		{
			sprite_index = spr_Lost_2;
		}
		else if Health < 30
		{
			sprite_index = spr_Lost_3;
		}
		else if Health < 20
		{
			sprite_index = spr_Lost_4;
		}
		else if Health < 1
		{
			instance_destroy();
		}
	}
		

if (global.InTheOpen = true)
{
	if(facing = true)
	{
		if (collision_rectangle(x,y+46,x+256, y-46, oPlayer,false,false))
		{
			
		if Health = 40
		{
			sprite_index = spr_Lost_Trigger_1;
		}
		else if Health < 40
		{
			sprite_index = spr_Lost_Trigger_2;
		}
		else if Health < 30
		{
			sprite_index = spr_Lost_Trigger_3;
		}
		else if Health < 20
		{
			sprite_index = spr_Lost_Trigger_4;
		}
		else if Health < 1
		{
			instance_destroy();
		}
			
			if Change = false
			{
				alarm[2] = 27;
			}
			Change = true;
			hspeed = 0;			
		}
		else
		{
			alarm[1] = 240;
		}
	}
	else
	{
		if (collision_rectangle(x,y+46,x-256, y-46, oPlayer,false,false))
		{
				if Health = 40
	{
		sprite_index = spr_Lost_Trigger_1;
	}

			if Health = 40
		{
			sprite_index = spr_Lost_Trigger_1;
		}
		else if Health < 40
		{
			sprite_index = spr_Lost_Trigger_2;
		}
		else if Health < 30
		{
			sprite_index = spr_Lost_Trigger_3;
		}
		else if Health < 20
		{
			sprite_index = spr_Lost_Trigger_4;
		}
		else if Health < 1
		{
			instance_destroy();
		}
		
			if Change = false
			{
				alarm[2] = 27;
			}
			hspeed = 0;
			Change = true;			

		}
		else
		{
			alarm[1] = 240;
		}
	}
}
	


}


