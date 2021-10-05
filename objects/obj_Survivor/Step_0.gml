/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, oPlayer))
{
			if keyboard_check_released(ord("X"))
		{
	if(CurrentPage > LastPage)
	{
			instance_destroy(obj_TextBox);
			CurrentPage = 0;
			TalkedTo = true;
	}
	else
	{
			if(TalkedTo = false)
			{
							instance_destroy(obj_TextBox);
			Textbox = instance_create(X,Y, obj_TextBox);
			Textbox.Text = MyText[CurrentPage];
			CurrentPage += 1;
			}
			else
			{
				instance_destroy(obj_TextBox);
				Textbox = instance_create(X,Y, obj_TextBox);
				Textbox.Text = MyText[ResetPage];
				CurrentPage = ResetPage;
							CurrentPage += 1;
			}
	
		}
	}

}
else
{
	instance_destroy(obj_TextBox);
	CurrentPage = 0;
}