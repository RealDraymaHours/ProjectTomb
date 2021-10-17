switch(BellLadyState)
{
	case(0):
		MyText[0] = "Oh my hello there";
		MyText[1] = "Its been so long since I saw someone not lost.";
		MyText[2] = "Y-y-you can stay here as long as you like, don't worry about me.";
		MyText[3] = "The lost avoid this place so its save.";
		MyText[4] = "I-i-if I am annoying you I will just stay silent. Please dont mind me I wont bother you.";
		
		LastPage = 4;
		ResetPage = 4;
	break;
	case(1):
		MyText[0] = "You don't find me annoying?";
		MyText[1] = "Oke, so ehm";
		MyText[2] = "You see I have this bell right?";
		MyText[3] = "Well I used a spell that send my bells all over this tomb!";
		MyText[4] = "And the bells are infused with my magic so my song is played through the whole tomb.";
		MyText[5] = "However... ehm... I have no control of where the bells end up...";
		MyText[6] = "And I also don't see myself surviving long enough to place them in worthwhile places ha ha...";
		MyText[7] = "My songs ward away the lost while also easing your pains.";
		MyText[8] = "Some said that it has another use but all of them seem to have become Lost so no point asking them now.";
		MyText[9] = "NOT THAT IT WILL TURN YOU INTO LOST!!!";
		MyText[10] = "I think? I haven't become lost and I listen to this all day I swear!";
		
		LastPage = 10;
		ResetPage = 10;
	break;
	case(2):
		MyText[0] = "Welcome back!";
		MyText[1] = "Oh dear what happened?!";
		MyText[2] = "You look like you have seen a ghost.";
		MyText[3] = "oh no...";
		MyText[4] = "Don't tell me there are ghost now here too?!?";
		MyText[5] = "D-d-d-d-don't worry! I-i-i will protect you from the ghost!";
		MyText[6] = "My song shall ward off all that harms my friends";
		MyText[7] = "I-i-i can call you my friend right?";
		
		LastPage = 7;
		ResetPage = 7;
	break;
}




if(place_meeting(x, y, oPlayer))
{
	if keyboard_check_released(ord("W"))
	{
		if(CurrentPage > LastPage)
		{
			instance_destroy(obj_TextBox);
			SaveBellLady(BellLadyState);
			
			CurrentPage = 0;
			if BellLadyState = 0
			{
				BellLadyState = 1;	
			}
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