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
		case 6:
			InvSprite = spr_inv_Mage;
		break;
		case 7:
			InvSprite = spr_inv_Zweihander;
		break;
		case 8:
			InvSprite = spr_inv_tornado;
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
		case 7:
			InvObj = dmg_Soul_Zweihander;
		break;
		case 8:
			InvObj = dmg_Wand_Tornado;
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
		case 6:
			Armor = "Mage";
		break;

	}
	
	return Armor;
}

function inventoryToStats(inventoryIndex)
{
	Stats = [1,2];	///[Health, Mana]
		switch(inventoryIndex)
		{
			case 4:
				Stats = [0,0];
			break;
			case 5:
				Stats = [2,0];
			break;
			case 6:
				Stats = [0,10];
			break;
		}
	return Stats;
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
					"the edge of the world, surrounded by monster that are feared\n" +
					"by every kingdom under the sun. With their only strength being\n" +
					"their above average amount of soul compaired to other races.\n\n"+
					"And well, you know what they say:\n"+
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
			case 6:	   //||||||||||||||||||||||||||||||||||||||||||||||||||||||<-border limit
				Desc= "Mences mage hat\n\n" +
					  "A big hat that increases your mana pool.\n\n" +
					  "There was once a mage who specialized in fungal magic.\n" +
					  "He believed that it was the key to solve many illnesses.\n" +
					  "However one day he overstepped and hit himself with his \n" +
					  "own spell. This caused him to grow muschrooms all over his\n" +
					  "body. Eventually the shrooms fused together and formed one\n" +
					  "giant muschroom hat on top of his head.\n\n" +
					  "People however hailed him as a genius for his breakthroughs.\n" +
					  "The classic mage hat being an imitation of his muschroom head.\n"+
					  "Even though the school of Mences abandoned medicine long ago,\n" +
					  "their hat will forever be a symbol of their roots.";
			break;
			case 7:	   //||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||<-border limit
				Desc= "Soul Zweihander\n\n" +
					  "A heavy but devastating soul arm.\n\n"+
					  "He rejoised as the king annouced the news. Dukedom was\n"+
					  "awarded to the legendary warrior. His years of campaiging\n"+
					  "where over. Replaced with indulging in the finer things in life.\n"+
					  "Only nobles could afford so much mage wine as he consumed.\n"+
					  "His body and mind deteriorated while he all but forgotten about\n"+
					  "his days as a warrior. Until the day that his own sword flew into\n"+
					  "the air and cut out his eye. Before being lock behind iron walls.\n\n"+
					  "The sword could be heard banging in its confinment. Day and night\n"+
					  "slowly chipping away at the walls. Until one day it stopped.\n"+
					  "On that day, after the sun set, a letter arrived from the king.\n"+
					  "'We are going to the Tomb. We need all men who can wield a sword'";
			break;
			case 8:    //||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||<-border limit
				Desc= "Noctovics Tempest\n\n"+
					  "Create a big wind vortex where you stand.\n\n"+
					  "The sword of the Noctivics family allows one with royal blood\n"+
					  "to channel powerfull tempests. The sword itself gets passed\n"+
					  "down to the kings offspring who has the biggest talent in\n"+
					  "channeling tempest. For the next king should be able to move\n"+
					  "even the skies if their people need it. Thats also why the\n"+ 
					  "handing down of the sword is synonymous with a coronation.\n"+
					  "So at his 7th birthday young Alland was gifted the sword.\n\n"+
					  "A gift in bitter taste.\n"+
					  "For a king rules until his death."
			break; 
				
		}
	return Desc;
}

