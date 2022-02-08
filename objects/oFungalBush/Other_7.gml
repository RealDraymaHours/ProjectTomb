if state = "WIGGLE"
{
	x1 = 0;
	x2 = 0;

	y1 = 0;
	y2 = 0;

	if image_xscale = 1
	{
		x1 = -5;
		x2 = 0;
		
		y1 = -5;
		y2 = -2;
		
		image_xscale = -1;
	}
	else
	{
		x1 = 0;
		x2 = 5;
		
		y1 = -5;
		y2 = -2;
		
		image_xscale = 1;
	}
	
	repeat(irandom(3)+1)
	{
		Shroom = instance_create(x,y,oFungalBushMushroom);	
		Shroom.xspd = random_range(x1,x2);
		Shroom.yspd = random_range(y1,y2);
	}
}