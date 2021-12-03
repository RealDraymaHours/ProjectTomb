/// @description Insert description here
// You can write your code in this editor
switch(CurrentText)
{
	case(0):
		
		MyText[0] = "Oh, hello there.";
		MyText[1] = "Its been quite some time since someone new and not Lost has appeared.";
		MyText[2] = "Hahaha do not worry little one. I will not just attack you as long as you play nice.";
		MyText[3] = "That barrier in front of us keeps prefents anybody from leaving.";
		MyText[4] = "Its connected to my life so the only way of breaking it is if you break me.";
		MyText[5] = "So no point in hurting you right, hahaha!";

		LastPage = 5;
		ResetPage = 5;
	break;
	case(1):
		
		MyText[0] = "What? You want to get out?!";
		MyText[1] = "Oh dear...";
		MyText[2] = "Well, you see, I can not just remove the barrier.";
		MyText[3] = "Not without killing myself that is.";
		MyText[4] = "So sorry little one.";
		MyText[5] = "Even if I wanted to, I simply can not help you here.";

		LastPage = 5;
		ResetPage = 5;
	break;
	case(2):
		
		MyText[0] = "...";
		MyText[1] = "You really want to do this.";
		MyText[2] = "*sigh*...";
		MyText[3] = "I really thought I finally found someone not Lost...";
		MyText[4] = "Oh well";
		MyText[5] = "Worthless trash like you stop comming after two or three beatings";

		LastPage = 5;
		ResetPage = 5;
	break;
}



if (place_meeting(x, y, oPlayer))
{
	if keyboard_check_released(ord("W"))
	{
		if x < oFolCam.x
		{
			image_xscale = 1;
		}
	else
	{
		image_xscale = -1;
	}
	if(CurrentPage > LastPage)
	{
			instance_destroy(obj_TextBox);
			CurrentPage = 0;
			CurrentText += 1;
	}
	else
	{

			instance_destroy(obj_TextBox);
			Textbox = instance_create(x + X, y + Y, obj_TextBox);
			Textbox.Text = MyText[CurrentPage];
			CurrentPage += 1;
	}
	}
}
else
{
	instance_destroy(obj_TextBox);
	CurrentPage = 0;
	
}


if CurrentText > 2
{
	instance_create_depth(x,y,self.depth,obj_OKA);
	ChangeViewPoint("BOSS");
	instance_destroy();
}
