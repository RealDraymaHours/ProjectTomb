if(place_meeting(x, y, oPlayer))
{
	Textbox = instance_create(x + 104 , y - 128 , obj_TextBox);
	Textbox.Text = MyText[0];
	Textbox.depth = -99;
}
else
{
	instance_destroy(obj_TextBox);
}