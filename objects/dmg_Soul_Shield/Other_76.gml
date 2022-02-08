if (event_data[? "message"] == "Shield_Activate")
{
	Active = true;
}


if (event_data[? "message"] == "Shield_Deactivate")
{
	Active = false;
	State = "DONE";
}

if (event_data[? "message"] == "Shield_Deactivate_Parry")
{
	Active = false;
	State = "PARRY";
}

