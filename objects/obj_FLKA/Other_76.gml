/// @description
if (event_data[? "message"] == "Spawn_Done")
{
	sprite_index = spr_FLKA_Idle;
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
}