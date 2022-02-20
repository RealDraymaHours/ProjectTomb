image_speed = 0.1;

switch(CurrentText)
{
	case(0):
		
		MyText[0] = "You want to escape this place?";
		MyText[1] = "Hehehe";
		MyText[2] = "Well if you really want to then your only shot is turning into a weapon.";
		MyText[3] = "Being a defect just means you can't do it permenantly!";
		MyText[4] = "To do it you just need to get a lot of fresh essence!";
		MyText[5] = "but ehh...";
		MyText[6] = "It will only last a couple of seconds...";
		MyText[7] = "Also you will need to survive long enough to actually do it...";
		MyText[8] = "While attacking like crazy to get enough essence...";
		MyText[9] = "And stockpiling it before the fight won't do anything because it needs to be fresh essence."
		MyText[10] = "Yeah you know what forget it. \nI am just talking stupid.";

				

		LastPage = 10;
		ResetPage = 10;
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
	}
	else
	{
		if instance_exists(oNPCTextBox)
		{
			if oNPCTextBox.NPC == NPC
			{
				instance_destroy(oNPCTextBox);
			}
		}
		
		Textbox = instance_create_depth(npcX, npcY,-100, oNPCTextBox);
		Textbox.Text = MyText[CurrentPage];
		Textbox.NPC = NPC;
		CurrentPage += 1;
	}
	}
}
else
{
	if instance_exists(oNPCTextBox)
	{
		if oNPCTextBox.NPC == NPC
		{
			instance_destroy(oNPCTextBox);
		}
	}
	CurrentPage = 0;
	
}
