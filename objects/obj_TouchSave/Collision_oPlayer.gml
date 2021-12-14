/// @description Insert description here
// You can write your code in this editor
if !Saved
{
	Save();
	alarm[1] = 120;
	global.Health = global.MaxHealth;
	global.Mana = global.MaxMana;
	
	Saved = true;
}