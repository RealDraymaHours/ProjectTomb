// Font ///////////////////////////////////////////////////////////////////////
//globalvar FONT;
//FONT = font_add_sprite(sFont, ord(" "), 0, 1);

//draw_set_color(c_white);
//draw_set_font(FONT);

//fontAng = 0;
//fontDir = 1;

//Player variables
global.InTheOpen = true;
global.BunnyBulletActive = false;
global.Health = 5;
global.MaxHealth = 5;
global.Staggered = false;
global.Mana = 10;
global.MaxMana = 10;

//UI
global.MainIcon = spr_Hitbox;
global.FirstSpellIcon = spr_Hitbox;
global.SecondSpellIcon = spr_Hitbox;
global.Inventory = false;

//Equipables
global.LeftItem = dmg_Soul_Zweihander;
global.Armor = "Base";
global.Spell1 = dmg_Star_Wand;
global.Spell2 = dmg_Wand_Tornado;

//Collected Weapons
global.SoulSword = true;
global.SoulSpear = false;

//Collected Armor
global.Helmet = true;

//Triggers
	//Weapons
	Tornado = false;
	Spear = false;
	Zweihander = false;

	//Bosses
	OKA = false;

///////////////////////////////////////////////////////////////////////////////
randomize();

//Start Savefiles

SaveBellLady(0);

