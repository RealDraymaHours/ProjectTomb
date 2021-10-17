/// @description Insert description here
// You can write your code in this editor
if !Saved
{
	Save();

	global.Health = global.MaxHealth;
	global.Mana = global.MaxMana;
	
	Saved = true;
}