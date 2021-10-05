/// @description Insert description here
// You can write your code in this editor
if keyboard_check_released(ord("X"))
{
	draw_text(obj_SavePoint.x - 32, obj_SavePoint.y, "SAVED");
	game_save("Save1");
}	
