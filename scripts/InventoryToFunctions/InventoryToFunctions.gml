// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inventoryToSprite(inventoryIndex)
{
	InvSprite = spr_inv_spear;
	
	switch(inventoryIndex)
	{
		case 1:
			InvSprite = spr_inv_sword;
		break;
		case 2:
			InvSprite = spr_inv_spear;
		break;
		case 3:
			InvSprite = spr_inv_star;
		break;
		case 4:
			InvSprite = spr_inv_Base;
		break;
		case 5:
			InvSprite = spr_inv_Knight;
		break;
	}
		
	return InvSprite;
}

function inventoryToObject(inventoryIndex)
{
	InvObj = dmg_Soul_Spear;
	
	switch(inventoryIndex)
	{
		case 1:
			InvObj = dmg_Basic_Sword;
		break;
		case 2:
			InvObj = dmg_Soul_Spear;
		break;
		case 3:
			InvObj = dmg_Star_Wand;
		break;
	}
		
	return InvObj;
}

function inventoryToString(inventoryIndex)
{
	Armor = "base";
	
	switch(inventoryIndex)
	{
		case 4:
			Armor = "Base";
		break;
		case 5:
			Armor = "Knight";
		break;

	}
	
	return Armor;
}