image_speed = 0.1;

switch(CurrentText)
{
	case(0):
		
		MyText[0] = "I do not understand...";
		MyText[1] = "For what purpose do these fools dig such massive tunnels";
		MyText[2] = "If you just want a quiet place to lose your mind and rot away,";
		MyText[3] = "then wouldn't any place do?";
		MyText[4] = "But I guess...\nMaybe stubbornly clutching to our goals is what made us defects in the first place."

				

		LastPage = 4;
		ResetPage = 4;
	break;
}

if(place_meeting(x, y, oPlayer))
{
	if keyboard_check_released(ord("W"))
	{
			
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
