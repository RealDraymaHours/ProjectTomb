if global.Inventory
{
	state = stateFree;
	state();
}
else
{
	state = stateOff;
	state();
}

x = mouse_x;
y = mouse_y;