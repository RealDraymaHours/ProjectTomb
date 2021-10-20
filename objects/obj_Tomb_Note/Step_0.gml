if(place_meeting(x, y, oPlayer))
{
			if keyboard_check_released(ord("W"))
		{
	if(CurrentPage > LastPage)
	{
			instance_destroy(obj_TextBox);
			CurrentPage = 0;
	}
	else
	{

			instance_destroy(obj_TextBox);
			Textbox = instance_create(x + X, y + Y, obj_TextBox);
			Textbox.depth = -99;
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