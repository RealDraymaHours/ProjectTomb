/// @description
if (event_data[? "message"] == "Spawn_Done")
{
	sprite_index = spr_FLKA_Idle;
	alarm[0] = 20;
}

if (event_data[? "message"] == "Falling")
{
	sprite_index = spr_FLKA_Falling;
	vspeed = 9;

}

if (event_data[? "message"] == "Screen_Shake")
{
    with (oCamera) {
        alarm[0] = 8;
        screenShake = true;
    }
	
	repeat(4)
	{
		RX = irandom_range(16, 735);
		RY = irandom_range(-128, -16);
		
		instance_create(RX, RY, obj_FLKA_Rock);
	}
}