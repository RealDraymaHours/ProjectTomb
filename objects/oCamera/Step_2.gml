#macro view view_camera[0]

if instance_exists(obj_OKA)
{
	state = "BOSS";
}

camera_set_view_size(view, view_width, view_height);

if(instance_exists(oFolCam))
{
	switch(state)
	{
		case("BASE"):

		break;
		case("BOSS"):
		break;
	}
	
			var _x = clamp(oFolCam.x-view_width/2,0,room_width-view_width);
			var _y = clamp(oFolCam.y-view_height/Multiplier,0,room_height-view_height);
			camera_set_view_pos(view,_x,_y);
	
			var _cur_x = camera_get_view_x(view);
			var _cur_y = camera_get_view_x(view);
			var _spd = 1;
	
	
			camera_set_view_pos(view,
						lerp(_cur_x,_x,_spd),
						lerp(_cur_y,_y,_spd)
						)
}

// Screenshake
if (screenShake) {
    __view_set( e__VW.Angle, 0, random_range(-Intensity, Intensity) );
} else {
    // Reset
    __view_set( e__VW.Angle, 0, 0 );
}

