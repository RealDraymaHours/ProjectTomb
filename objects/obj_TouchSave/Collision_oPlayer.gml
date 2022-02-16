/// @description Insert description here
// You can write your code in this editor
if !Saved
{
	Save();
	alarm[1] = 120;
	if global.Health != global.MaxHealth
	{
		rep = global.MaxHealth - global.Health;
		repeat(rep * 10)
		{
			instance_create(x, y, obj_ParryHealthHit);	
		}
	}
	
	if global.Mana != global.MaxMana
	{
		rep = global.MaxMana - global.Mana;
		repeat(rep * 10)
		{
			instance_create(x, y, obj_ParryManaHit);	
		}

	}
	
	Saved = true;
}