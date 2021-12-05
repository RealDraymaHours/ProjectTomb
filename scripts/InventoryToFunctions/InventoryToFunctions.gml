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
		case 9:
			InvSprite = spr_inv_fireball;
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
		case 9:
			InvObj = dmg_Wand_Fireball;
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
	Stats = [1,2];	///[Health, Mana] ARMOR
					//[MaxCombo,Rooted]
		switch(inventoryIndex)
		{
			case 1:
				Stats = [3,true];
			break;
			case 2:
				Stats = [5, true];
			break;
			case 4:
				Stats = [0,0];
			break;
			case 5:
				Stats = [2,0];
			break;
			case 6:
				Stats = [0,10];
			break;
			case 7:
				Stats = [2,true];
			break;
		}
	return Stats;
}

function inventoryToDescription(inventoryIndex)
{
	Desc = "somefuckuped"
		
		switch(inventoryIndex)
		{
			case 1: //||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||<-border limit
			Desc = "Soul Sword\n \n" +
					"A balanced soul arm\n\n" +
					"There is no way to prevent something from reanimating within \n" +
					"the Cage. thats why soul arms became so popular.\n" +
					"One can simply turn their enemies into powerfull weapons.\n" +
					"However not everyone can use soul arms, nor can anybody become.\n" +
					"one. If one wants to use a soul arm they first need to be able to\n" +
					"use their own soul as a soul arm, the next stage is turning oneself\n" +
					"into a soul arm although only temporarly for its really taxing.\n" +
					"Who can become one is a bit more ambiguous but one thing is\n" +
					"Known for sure:\n\n"+
					"If ones will is strong, they cannot be turned into a soul arm\n"+
					"that someone other than themselves can use.";
			break;
			case 2: //||||||||||||||||||||||||||||||||||||||||||||||||||||||<-border limit
			Desc = "Soul Spear \n\n"+
				    "A soul arm with a lot of reach, but lacking in speed.\n\n" +
					"[INSERT FLAVOR TEXT]\n";

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
			case 4: //||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||<-border limit
			Desc = "Skin\n\n There are three fates the likes of us\n" +
					"1: If you can wield a weapon you'll become a slave knight.\n"+
					"Being thrown into the worst battles as fodder to die with the\n" +
					"sole purpouse of exhausting your masters enemies,\n"+
					"2: If you can't use a weapon then that means you can use-\n"+
					"and become a soul arm. Any semblance of a will shall be\n"+
					"beaten out of you until you are nothing but a 'living' husk\n"+
					"The perfect state for a weapon.\n"+
					"3: if you can't do either then you will be thrown into one of\n"+
					"many prisons to rot away forever.\n\n"+
					"Even if you did get out of the prison, you are harmless enough\n"+
					"that nobody would care.";
			break;
			case 5: //||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||<-border limit
			Desc = "Bunny eared helmet\n\n" +
				   "A sturdy helmet with room to put your ears into.\n\n"+
				   "Slave knights rarely get armor, but that wasn't always the case.\n" +
				   "Back in the days of the slave war, slaves where fully equiped.\n"+
				   "The choice to stop giving slaves gear was one of the reasons the\n" +
				   "Eight Lords where able to concer all of the Cage.\n\n"+
				   "Slaves where about as usefull with or without armor however,"+
				   "real fully armored soldiers made a difference. So much so that\n" +
				   "the slave war stalemate had been broken after 3000 years.\n" +
				   "The war itself ended only 2 weeks later."
			break;
			case 6:	   //||||||||||||||||||||||||||||||||||||||||||||||||||||||<-border limit
				Desc= "Oka mage hat\n\n" +
					  "A big hat that increases your mana pool.\n\n" +
					  "There was once a mage who specialized in fungal magic.\n" +
					  "He believed that it was the key to solve many illnesses.\n" +
					  "However one day he overstepped and hit himself with his \n" +
					  "own spell. This caused him to grow muschrooms all over his\n" +
					  "body. Eventually the shrooms fused together and formed one\n" +
					  "giant muschroom hat on top of his head.\n\n" +
					  "People however hailed him as a genius for his breakthroughs.\n" +
					  "The classic mage hat being an imitation of his muschroom head.\n"+
					  "Even though the school of Oka abandoned medicine long ago,\n" +
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
					  "Create a big wind vortex where you stand. COST 10MP\n\n"+
					  "The sword of the Noctivics family allows one with Noctovics blood\n"+
					  "to channel powerfull tempests. The sword itself gets passed\n"+
					  "down to the heads offspring who has the biggest talent in\n"+
					  "channeling tempest. For the next head should be able to move\n"+
					  "even the skies if their family need it. Thats also why the\n"+ 
					  "handing down of the sword is synonymous with becoming.\n"+
					  "the new head of the family.\n\n"+
					  "At his 7th birthday young Alland was gifted the sword.\n\n"+
					  "A gift in bitter taste.\n"+
					  "For a head rules until his death.";
			break; 
			case 9:
				Desc = "Fireball\n\n" +
					"Focus your soul into a fireball that fly where you point. COST: 5 MP\n\n" +
					"Most mages that bother with attack spells don't use soul.\n" +
					"One can easily cast a spell that takes ones life \n"+
					"if they put too much soul into their spell.\n \n"+
					"There is however a race of small creatures that mastered these\n"+
					"arts to a sickening degree. They have been pushed to\n"+
					"the edge of the world, surrounded by monster that are feared\n" +
					"by every kingdom under the sun. With their only strength being\n" +
					"their above average amount of soul compaired to other races.\n\n"+
					"And well, you know what they say:\n"+
					"'Desperation breeds creativity'";
			break;
				
		}
	return Desc;
}

