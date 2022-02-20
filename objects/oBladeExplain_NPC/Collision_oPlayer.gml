/// @description Insert description here
// You can write your code in this editor
instance_create_layer(oPlayer.x, oPlayer.y-10,"Important_player_layer", obj_ACTION);


switch(CurrentText)
{
	case(0):
		
		MyText[0] = "So thats about it...";
		MyText[1] = "What?!\nYou want to get out?";
		MyText[2] = "Listen here buddy.";
		MyText[3] = "Everyone here is just a bunch of defects.";
		MyText[4] = "If they can't turn us into weapons or send us as slave knights then we end up here";
		MyText[5] = "Seeing that you have a soul arm means you where to supposed to be a weapon and failed.";
		MyText[6] = "Look around you!\nThe slave knights all abandoned their weapons after giving up and most would-be-arms became Lost";
		MyText[7] = "So please.\nFind a spot to rot in and stay out of trouble.";
		MyText[8] = "I don't want to deal with more Lost";

				

		LastPage = 8;
		ResetPage = 8;
	break;
	case(1):
		
		MyText[0] = "What? Not Lost yet?";
		MyText[1] = "Well buzz off. I don't want you crawling here whne you finaly become one";

		LastPage = 1;
		ResetPage = 1;
	break;
}






	
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
	
	if(CurrentPage >= LastPage)
	{
			instance_destroy(obj_TextBox);
			CurrentPage = 0;
			CurrentText = 1;
	}
	else
	{

			instance_destroy(obj_TextBox);
			Textbox = instance_create(npcX, npcY, obj_TextBox);
			Textbox.Text = MyText[CurrentPage];
			CurrentPage += 1;
	}
}
