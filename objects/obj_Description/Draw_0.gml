/// @description Draw inv
if global.Inventory = true
{
	Health = global.Health;
	Mana = global.Mana;
	MaxHealth = global.MaxHealth;
	MaxMana = global.MaxMana
	
	
	draw_self();
	draw_set_font(fnt_ItemDescription);
	draw_text(x + 10, y + 10, Description);
	draw_text(x+ 10, y+246, ("Health: "+string(Health)+"/"+string(MaxHealth)));
	draw_text(x+ 10, y+278, ("Mana: "+string(Mana)+"/"+string(MaxMana)));
}