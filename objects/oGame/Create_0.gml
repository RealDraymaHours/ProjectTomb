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
global.GunActive = true;
global.Health = 3;
global.MaxHealth = 3;
global.Staggered = false;
global.Mana = 10;
global.MaxMana = 10;

global.LeftItem = dmg_Basic_Sword;
global.RightItem = dmg_Basic_Wand;


///////////////////////////////////////////////////////////////////////////////
randomize();


global.Gems = 0;
global.FurnaceBought1 = false;
global.FurnaceBought2 = false;
global.FurnaceBought3 = false;
global.FurnaceBought4 = false;
global.FurnaceBought5 = false;
global.Portal = false;