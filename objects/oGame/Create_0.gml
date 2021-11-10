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
global.LeftIcon = spr_inv_sword;
global.RightIcon = spr_inv_Zweihander
global.FirstSpellIcon = spr_inv_star;
global.SecondSpellIcon = spr_inv_tornado;
global.Inventory = false;

//Equipables
global.LeftItem = dmg_Basic_Sword;
global.RightItem = dmg_Soul_Zweihander;
global.Armor = "Base";
global.Spell1 = dmg_Star_Wand;
global.Spell2 = dmg_Wand_Tornado;

//Combo
global.LeftCombo = 0;
global.RightCombo = 0;
global.LeftMaxCombo = 3;
global.RightMaxCombo = 2;
global.Rooted = true;
global.ComboResetTime = 90;

///////////////////////////////////////////////////////////////////////////////
randomize();

//Start Savefiles

SaveBellLady(0);

