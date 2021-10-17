if(place_meeting(x, y, oPlayer))
{
	Textbox = instance_create(656 , 176 , obj_TextBox);
	Textbox.Text = MyText[0];
}
else
{
	instance_destroy(obj_TextBox);
}