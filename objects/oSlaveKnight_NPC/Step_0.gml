image_speed = 0.1;

switch(CurrentText)
{
	case(0):
		
		MyText[0] = "!!!";
		MyText[1] = "Wow, you scared me there for a second.";
		MyText[2] = "Oh I decided to leave my sword behind...\nI lost faith in me doing anything worthwhile with it";
		MyText[3] = "What about you?";
		MyText[4] = "...";
		MyText[5] = "I see.\nI know its not my place to talk but I would advice against it.";
		MyText[6] = "I've seen so many of my former allies become Lost in the pursuit of that hopeless dreams.\n";
		MyText[7] = "And those where all slave knights. So a soul arm has even less of a chance."
		MyText[8] = "But, I guess. There is something romantic in a fools fight against the impossible.";
		MyText[9] = "Wouldn't you agree?";				

		LastPage = 9;
		ResetPage = 9;
	break;
	case(1):
		
		MyText[0] = "Please give up, it beats becoming Lost."
		MyText[1] = "But, I guess. There is something romantic in a fools fight against the impossible.";
		MyText[2] = "Wouldn't you agree?";				


		LastPage = 2;
		ResetPage = 2;
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
			switch(CurrentText)
			{
				case(0):
				 CurrentText = 1;
				break;
			}
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
