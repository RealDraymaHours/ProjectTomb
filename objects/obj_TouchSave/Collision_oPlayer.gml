/// @description Insert description here
// You can write your code in this editor
if !Saved
{
	Save();
	alarm[1] = 120;
	if global.Health != global.MaxHealth
	{
		rep = global.MaxHealth - global.Health;
		repeat(rep * 5)
		{
			instance_create(x, y, obj_ParryHealthHit);	
		}
		
		Full = instance_create(x, y, obj_ParryHealthHit);	
		
		Full.Gain = global.MaxHealth;
		Full.alarm[0] = 20;
	}
	
	if global.Mana != global.MaxMana
	{
		rep = global.MaxMana - global.Mana;
		repeat(rep * 5)
		{
			instance_create(x, y, obj_ParryManaHit);	
		}
		
		Full = instance_create(x,y, obj_ParryManaHit);
		
		Full.Gain = global.MaxMana;
		Full.alarm[0] = 20;

	}
	
	Saved = true;
}