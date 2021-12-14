/// @description Draw inv
if global.Inventory = true
{
InvSprite = spr_FurnaceActive;

draw_sprite_stretched
(
	spr_Inventory,
	0,
	x-6,
	y-6,
	12+rowLength*36,
	12+(((INVENTORY_SLOTS_ARMOR-1) div rowLength)+1)*36
);

for (var i = 0; i < INVENTORY_SLOTS_ARMOR; i += 1)
{
	var xx = x + (i mod rowLength) * 36 + 2;
	var yy = y + (i div rowLength) * 36 + 2;
	var hover = (obj_Mouse.inventoryHoverArmor == id) && (obj_Mouse.slotHoverArmor == i)
	draw_sprite(spr_slot,hover,xx,yy)
	if (inventory[i] != -1)
	{
		inventoryToSprite(inventory[i]);
		var alpha = 1.0;
		if (obj_Mouse.inventoryDragArmor == id) && (obj_Mouse.slotDragArmor == i) alpha = 0.5;
		draw_set_alpha(alpha);
		draw_sprite(InvSprite,0,xx,yy);
		
		if global.Armor == inventoryToString(inventory[i])
		{
			draw_sprite(spr_Armor_Icon,0,xx,yy);	
		}
		
		draw_set_alpha(1.0);
	}
}
}