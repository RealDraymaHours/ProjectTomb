// Initialize input variables
//var kRestart, kQuit;

//kRestart   = keyboard_check_pressed(ord("R"));
//kQuit      = keyboard_check_pressed(vk_escape);

// Restart application
//if (kRestart)
//    game_restart();
    
// Close application
//if (kQuit)
 //   game_end();

if global.Points >= 150
{
	global.FirstDoor = true;
}
if global.Points >= 100
{
	global.PlayerStart = true;
}
if global.Points >= 10
{
	global.First10 = true;
}