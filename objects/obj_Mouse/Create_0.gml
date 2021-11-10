/// @description state machine

inventoryHover = -1;
slotHover = -1;
inventoryDrag = -1;
slotDrag = -1;

inventoryHoverSpell = -1;
slotHoverSpell = -1;
inventoryDragSpell = -1;
slotDragSpell = -1;

inventoryHoverSummon = -1;
slotHoverSummon = -1;
inventoryDragSummon = -1;
slotDragSummon = -1;

inventoryHoverArmor = -1;
slotHoverArmor = -1;
inventoryDragArmor = -1;
slotDragArmor = -1;

mouseOver = function()
{
	//empty
	slotHover = -1;
	inventoryHover = -1;
	
	//cooridinates
	var mx = mouse_x;
	var my = mouse_y;
	
	with (obj_Inventory)
	{
		if (point_in_rectangle
		(
			mx,
			my,
			x-6,
			y-6,
			x-6 + 12+rowLength*36,
			y-6+12+(((INVENTORY_SLOTS-1) div rowLength)+1)*36
			))
			{
				//check per slot
				for(var i = 0; i < INVENTORY_SLOTS; i += 1)
				{
					var xx = x + (i mod rowLength) * 36 + 2;
					var yy = y + (i div rowLength) * 36 + 2;
					if (point_in_rectangle(mx,my,xx,yy,xx+32,yy+32))
					{
						other.slotHover = i;
						other.inventoryHover = id;
					}
				}
			}
	}
}
mouseOverSpell = function()
{
	//empty
	slotHoverSpell = -1;
	inventoryHoverSpell = -1;
	
	//cooridinates
	var mx = mouse_x;
	var my = mouse_y;
	
	with (obj_SpellInventory)
	{
		if (point_in_rectangle
		(
			mx,
			my,
			x-6,
			y-6,
			x-6 + 12+rowLength*36,
			y-6+12+(((INVENTORY_SLOTS_SPELL-1) div rowLength)+1)*36
			))
			{
				//check per slot
				for(var i = 0; i < INVENTORY_SLOTS_SPELL; i += 1)
				{
					var xx = x + (i mod rowLength) * 36 + 2;
					var yy = y + (i div rowLength) * 36 + 2;
					if (point_in_rectangle(mx,my,xx,yy,xx+32,yy+32))
					{
						other.slotHoverSpell = i;
						other.inventoryHoverSpell = id;
					}
				}
			}
	}
}
mouseOverSummon = function()
{
	//empty
	slotHoverSummon = -1;
	inventoryHoverSummon = -1;
	
	//cooridinates
	var mx = mouse_x;
	var my = mouse_y;
	
	with (obj_SummonInventory)
	{
		if (point_in_rectangle
		(
			mx,
			my,
			x-6,
			y-6,
			x-6 + 12+rowLength*36,
			y-6+12+(((INVENTORY_SLOTS_SUMMON-1) div rowLength)+1)*36
			))
			{
				//check per slot
				for(var i = 0; i < INVENTORY_SLOTS_SUMMON; i += 1)
				{
					var xx = x + (i mod rowLength) * 36 + 2;
					var yy = y + (i div rowLength) * 36 + 2;
					if (point_in_rectangle(mx,my,xx,yy,xx+32,yy+32))
					{
						other.slotHoverSummon = i;
						other.inventoryHoverSummon = id;
					}
				}
			}
	}
}
mouseOverArmor = function()
{
	//empty
	slotHoverArmor = -1;
	inventoryHoverArmor = -1;
	
	//cooridinates
	var mx = mouse_x;
	var my = mouse_y;
	
	with (obj_ArmorInventory)
	{
		if (point_in_rectangle
		(
			mx,
			my,
			x-6,
			y-6,
			x-6 + 12+rowLength*36,
			y-6+12+(((INVENTORY_SLOTS_ARMOR-1) div rowLength)+1)*36
			))
			{
				//check per slot
				for(var i = 0; i < INVENTORY_SLOTS_ARMOR; i += 1)
				{
					var xx = x + (i mod rowLength) * 36 + 2;
					var yy = y + (i div rowLength) * 36 + 2;
					if (point_in_rectangle(mx,my,xx,yy,xx+32,yy+32))
					{
						other.slotHoverArmor = i;
						other.inventoryHoverArmor = id;
					}
				}
			}
	}
}


stateFree = function()
{
	mouseOver();
	mouseOverSummon();
	mouseOverSpell();
	mouseOverArmor();
	
	//StartCode if you click the thing
	//Weapons
	if (mouse_check_button(mb_left)) && (slotHover != -1) && (inventoryHover.inventory[slotHover] != -1)
	{
		global.LeftItem = inventoryToObject(inventoryHover.inventory[slotHover]);
		global.LeftIcon = inventoryToSprite(inventoryHover.inventory[slotHover]);
		Stats = inventoryToStats(inventoryHover.inventory[slotHover]);
		global.LeftMaxCombo = Stats[0];
		global.Rooted = Stats[1];
		
	}
	
	if (mouse_check_button(mb_right)) && (slotHover != -1) && (inventoryHover.inventory[slotHover] != -1)
	{
		global.RightItem = inventoryToObject(inventoryHover.inventory[slotHover]);
		global.RightIcon = inventoryToSprite(inventoryHover.inventory[slotHover]);
		Stats = inventoryToStats(inventoryHover.inventory[slotHover]);
		global.RightMaxCombo = Stats[0];
		global.Rooted = Stats[1];
		
	}
		//spells
	if (mouse_check_button(mb_left)) && (slotHoverSpell != -1) && (inventoryHoverSpell.inventory[slotHoverSpell] != -1)
	{
		global.Spell1 = inventoryToObject(inventoryHoverSpell.inventory[slotHoverSpell]);
		global.FirstSpellIcon = inventoryToSprite(inventoryHoverSpell.inventory[slotHoverSpell]);
	}
	
	if (mouse_check_button(mb_right)) && (slotHoverSpell != -1) && (inventoryHoverSpell.inventory[slotHoverSpell] != -1)
	{
		global.Spell2 = inventoryToObject(inventoryHoverSpell.inventory[slotHoverSpell]);
		global.SecondSpellIcon = inventoryToSprite(inventoryHoverSpell.inventory[slotHoverSpell]);
	}
	
	 //summons
	if (mouse_check_button(mb_left)) && (slotHoverSummon != -1) && (inventoryHoverSummon.inventory[slotHoverSummon] != -1)
	{
		global.Spell1 = inventoryToObject(inventoryHoverSummon.inventory[slotHoverSummon]);
		global.FirstSpellIcon = inventoryToSprite(inventoryHoverSummon.inventory[slotHoverSummon]);
	}
	if (mouse_check_button(mb_right)) && (slotHoverSummon != -1) && (inventoryHoverSummon.inventory[slotHoverSummon] != -1)
	{
		global.Spell2 = inventoryToObject(inventoryHoverSummon.inventory[slotHoverSummon]);
		global.SecondSpellIcon = inventoryToSprite(inventoryHoverSummon.inventory[slotHoverSummon]);
	}
		//armor
	if (mouse_check_button(mb_left)) && (slotHoverArmor != -1) && (inventoryHoverArmor.inventory[slotHoverArmor] != -1)
	{
		global.Armor = inventoryToString(inventoryHoverArmor.inventory[slotHoverArmor]);
		Stats = inventoryToStats(inventoryHoverArmor.inventory[slotHoverArmor]);
		global.MaxHealth = 5 + Stats[0];
		global.MaxMana = 10 + Stats[1];
	}
	
		//description
	if((slotHoverArmor != -1) && (inventoryHoverArmor.inventory[slotHoverArmor] != -1))
	{
		obj_Description.Description = inventoryToDescription((inventoryHoverArmor.inventory[slotHoverArmor]))
	}
	else if (slotHover != -1) && (inventoryHover.inventory[slotHover] != -1)
	{
		obj_Description.Description = inventoryToDescription((inventoryHover.inventory[slotHover]))
	}
	else if (slotHoverSpell != -1) && (inventoryHoverSpell.inventory[slotHoverSpell] != -1)
	{
		obj_Description.Description = inventoryToDescription((inventoryHoverSpell.inventory[slotHoverSpell]))
	}
	else if (slotHoverSummon != -1) && (inventoryHoverSummon.inventory[slotHoverSummon] != -1)
	{
		obj_Description.Description = inventoryToDescription((inventoryHoverSummon.inventory[slotHoverSummon]))
	}
	
}

stateOff = function(){}




