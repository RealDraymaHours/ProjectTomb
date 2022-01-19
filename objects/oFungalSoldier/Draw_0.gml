draw_self();

if (state == "IDLE")
{
	if oFolCam.x > x
	{
		image_xscale = 1;
	}
	else
	{
		image_xscale = -1;
	}
}