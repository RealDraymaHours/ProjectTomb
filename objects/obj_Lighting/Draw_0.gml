if (surface_exists(LightSurf))
{
	surface_set_target(LightSurf);
	draw_clear(c_black);
	
	with (oPlayer)
	{
		gpu_set_blendmode(bm_normal);
		draw_sprite_ext(spr_SmallLight, 0,x,y,oPlayer.X,oPlayer.Y,0, oPlayer.MyLight, oPlayer.Intensity);//.5 is the intensity!!!	
	}
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	draw_surface_ext(LightSurf,0,0,1,1,0,c_white,darkness);
}
else
{
	LightSurf = surface_create(room_width, room_height);
}