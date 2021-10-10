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
global.MainIcon = sPlayerIdle;
global.FirstSpellIcon = sPlayerIdle;
global.SecondSpellIcon = spr_gunner;

//Equipables
global.LeftItem = dmg_Soul_Spear;
global.Armor = "Base";
global.Spell1 = dmg_Star_Wand;
global.Spell2 = obj_Gunner;

//Collected Weapons
global.SoulSword = true;
global.SoulSpear = false;

//Collected Armor
global.Helmet = true;

//Triggers
global.OKA = false;
///////////////////////////////////////////////////////////////////////////////
randomize();


