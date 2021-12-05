image_speed = 0.1;

switch(CurrentText)
{
	case(0):
		
		MyText[0] = "So thats about it...";
		MyText[1] = "What?!\nYou want to get out?";
		MyText[2] = "Listen here buddy.\nForget the lords";
		MyText[3] = "You where supposed to end up as an sword or spear and you couldn't even do that!";
		MyText[4] = "Yet you believe you can achieve something that all rebel forces in the Cage couldn't?";
		MyText[5] = "Hell you can't even get out of here! You are forever stuck in this prison within a prison!";
		MyText[6] = "So please behave, find a nice spot to rot and just try not to get Lost";

				

		LastPage = 6;
		ResetPage = 6;
	break;
	case(1):
		
		MyText[0] = "What? Not Lost yet?";
		MyText[1] = "Well buzz off. I don't want you crawling here when you finaly become one";

		LastPage = 1;
		ResetPage = 1;
	break;
}

if(place_meeting(x, y, oPlayer))
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
			instance_destroy(oNPCTextBox);
			CurrentPage = 0;
			CurrentText = 1;
			TutorialStartNPCSave();
	}
	else
	{

			instance_destroy(oNPCTextBox);
			Textbox = instance_create_depth(npcX, npcY,-100, oNPCTextBox);
			Textbox.Text = MyText[CurrentPage];
			CurrentPage += 1;
	}
	}
}
else
{
	instance_destroy(oNPCTextBox);
	CurrentPage = 0;
	
}
