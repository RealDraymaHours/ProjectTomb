/// @description Insert description here
// You can write your code in this editor
if global.WorkerPass= false
{
	visible = false;
}
else
{
	visible = true;
if global.Points >= global.WorkerCost
{
	if mouse_check_button_released(mb_left)
	{
		if position_meeting(mouse_x, mouse_y, obj_AddWorker)
			{
				global.Points -= global.WorkerCost;
				global.WorkerCost = global.WorkerCost * 4;
				global.Workers += 1;
			}
   }
}
}

