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

function inventoryToDescription(inventoryIndex)
{
	Desc = "somefuckuped"
		
		switch(inventoryIndex)
		{
			case 1: //||||||||||||||||||||||||||||||||||||||||||||||<-border limit
			Desc = "Soul Sword\n \n" +
					"A sword forged out of a brave yet \n" +
					"weak warrior.\n \n" +
					"There are many factors that determin how a \n" +
					"Soul-arm ends op looking:\n" +
					"Health determines size,\n" +
					"Spirit determines strenght\n" +
					"And Ego determines the form and \n" +
					"attribute of the weapon\n \n" +
					"In that sense, Soul-arms are much\n" +
					"like normal people.";
			break;
			case 2: //||||||||||||||||||||||||||||||||||||||||||||||||||||||<-border limit
			Desc = "Soul Spear \n\n"+
				    "A spear forged out of a cowardly yet healthy soul.\n\n" +
					"He knew of the horrors that awaited him.\n" +
					"He decided that a spear would be better to keep the\n" +
					"monsters at bay, even though all of his brothers took\n" +
					"swords with them. This caused resentment amongst the\n" +
					"brothers in arms.\n\n" +
					"This resentment poisened their minds making their souls \n" +
					"rotten to the core once they died or became Lost. \n" +
					"One soul however, managed to stave away the rot. \n"+
					"Even though his mind was poisened the most he at least \n" +
					"managed to avoid taking much damage. \n" +
					"However, not thanks to his spear.";
			break;
			case 3:  //||||||||||||||||||||||||||||||||||||||||||||||||||||||<-border limit
			Desc =  "Star dust\n\n" +
					"Focus your soul into 3 stars that fly where you point.\n\n" +
					"Most mages that bother with attack spells don't use soul.\n" +
					"One can easily cast a spell that takes ones life \n"+
					"if they put too much soul into their spell.\n \n"+
					"There is however a race of small creatures that mastered these\n"+
					"arts to a sickening degree. They have been pushed to\n"+
					"the edge of the world with no strenghts other than their\n"+
					"above average amount of soul compaired to other races.\n"+
					"Surrounded by monster that are feared by every kingdom.\n\n" +
					"Well, you know what they say:\n"+
					"'Desperation breeds creativity'"
			break;
			case 4:
			Desc = "Skin\n you where born with it";
			break;
			case 5: //||||||||||||||||||||||||||||||||||||||||||||||||||||||<-border limit
			Desc = "Bunny eared helmet\n\n" +
				   "A sturdy helmet with room to put your ears into.\n\n"+
				   "'I thought it was cute' the soldier cried while being\n" +
				   "mocked by his brothers in arms. The ears didn't give him\n"+
				   "any advantages or disadvantages to him. It was just cute.\n\n" +
				   "One could say it was fate that you found this helmet."
			break;
		}
	return Desc;
}