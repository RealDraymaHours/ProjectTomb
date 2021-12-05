image_speed = 0.1;

switch(CurrentText)
{
	case(0):
		
		MyText[0] = "...";
		MyText[1] = "Hey, you seem to have stayed un-Lost";
		MyText[2] = "Well no matter how uncomfortable this place looks its taken!";
		MyText[3] = "My place was down there but the Lost have migrated there.";
		MyText[4] = "The managers have 'disgared' some old guard...";
		MyText[5] = "and by that I mean they broke his legs and dumped him where their place was.";
		MyText[6] = "...\n";
		MyText[7] = "HAHAHAHAHAHA!!!"
		MyText[8] = "Well if you want to help me than you can get rid of that old guard for me.";
		MyText[9] = "Afterwards: This place is yours. I also throw a little something extra for you.";				

		LastPage = 9;
		ResetPage = 9;
	break;
	case(1):
		
		MyText[0] = "Still here? Well the old guard is still kicking.";
		MyText[1] = "Good luck, HAHAHAHAHA";

		LastPage = 1;
		ResetPage = 1;
	break;
	case(2):
	
		MyText[0] = "...";
		MyText[1] = "Hey, you seem to have stayed un-Lost";
		MyText[2] = "Well no matter how uncomfortable this place looks its, taken!";
		MyText[3] = "My place was down there but the Lost have migrated there.";
		MyText[4] = "The managers have 'disgared' some old guard...";
		MyText[5] = "and by that I mean they broke his legs and dumped him where their place was.";
		MyText[6] = "WAIT YOU ALREADY DEALT WITH THAT???";
		MyText[7] = "You are not even a slave knight, just an soul arm and yet...";
		MyText[8] = "Well i'll be damned...\n";
		MyText[9] = "This spot is yours and also take this helmet. Please take it as a reward";
		
		LastPage = 9;
		ResetPage = 9;
	break;
	case(3):
	
		MyText[0] = "Its a lot nicer without a helmet.";
		MyText[1] = "Again, thank you for dealing with this. I would never believe you had it in you.";
		
		LastPage = 1;
		ResetPage = 1;
	break;
	case(4):
	
		MyText[0] = "Hey old friend!";
		MyText[1] = "The Lost didn't get back here so I just took this place.";
		MyText[2] = "Pretty neat, huh!";
		MyText[3] = "Thank you once again.";
		
		LastPage = 3;
		ResetPage = 3;
	break;
	case(5):
		MyText[0] = "Still here?...";
		MyText[1] = "WAIT WHAT?!\nYOU ACTUALLY DID IT!?";
		MyText[2] = "Well i'll be damned! I would expect a slave knight to be able to but an soul arm?";
		MyText[3] = "I'll admit you have blown my expectations out of the water.";
		MyText[4] = "The spot is yours and i'll also throw in my helmet. Please accept it."
		MyText[5] = "I don't have anything else you could use";
		
		LastPage = 5;
		ResetPage = 5;
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
				 TutorialBrotherNPCSave();
				break;
				case(1):
				 CurrentText = 1;
				 TutorialBrotherNPCSave();
				break;
				case(2):
					CurrentText = 3;
					TutorialBrotherNPCSave();
					//
					InventoryAdd(obj_ArmorInventory, 5);
					sprite_index = sStartIdle;
				break;
				case(3):
					CurrentText = 4;
					TutorialBrotherNPCSave();
					CurrentText = 3;
				break;
				case(4):
					CurrentText = 4;
					TutorialBrotherNPCSave();
				break;
				case(5):
					CurrentText = 4;
					TutorialBrotherNPCSave();
					CurrentText = 3;
					//
					sprite_index = sStartIdle;
					InventoryAdd(obj_ArmorInventory, 5);
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
