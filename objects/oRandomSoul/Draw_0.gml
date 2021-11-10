draw_self();

if state != "ATTACKING"
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