// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Load(){

ini_open("savedata.ini");

var RGT = ini_read_real("savegame","room", 0);



oPlayer.x = ini_read_real("savegame", "x", 0);
oPlayer.y = ini_read_real("savegame", "y", 0);


//Equiped
global.LeftItem = ini_read_real("savegame", "weapon", 0);
global.Spell1 = ini_read_real("savegame", "firstspell", 0);
global.Spell2 = ini_read_real("savegame", "secondspell", 0);
global.Armor = ini_read_string("savegame", "armor", "base");

//Visuals
global.MainIcon = ini_read_real("savegame", "icon1", 0);
global.FirstSpellIcon = ini_read_real("savegame", "icon2", 0);
global.SecondSpellIcon = ini_read_real("savegame", "icon3", 0);

//Inventory
//Weapon Inventory
obj_Inventory.inventory[0] = ini_read_real("savegame", "winv0", 0);
obj_Inventory.inventory[1] = ini_read_real("savegame", "winv1", 0);
obj_Inventory.inventory[2] = ini_read_real("savegame", "winv2", 0);
obj_Inventory.inventory[3] = ini_read_real("savegame", "winv3", 0);
obj_Inventory.inventory[4] = ini_read_real("savegame", "winv4", 0);
obj_Inventory.inventory[5] = ini_read_real("savegame", "winv5", 0);
obj_Inventory.inventory[6] = ini_read_real("savegame", "winv6", 0);
obj_Inventory.inventory[7] = ini_read_real("savegame", "winv7", 0);
obj_Inventory.inventory[8] = ini_read_real("savegame", "winv8", 0);
obj_Inventory.inventory[9] = ini_read_real("savegame", "winv9", 0);
obj_Inventory.inventory[10] = ini_read_real("savegame", "winv10", 0);
obj_Inventory.inventory[11] = ini_read_real("savegame", "winv11", 0);
//Armor Inventory
obj_ArmorInventory.inventory[0] = ini_read_real("savegame", "ainv0", 0);
obj_ArmorInventory.inventory[1] = ini_read_real("savegame", "ainv1", 0);
obj_ArmorInventory.inventory[2] = ini_read_real("savegame", "ainv2", 0);
obj_ArmorInventory.inventory[3] = ini_read_real("savegame", "ainv3", 0);
obj_ArmorInventory.inventory[4] = ini_read_real("savegame", "ainv4", 0);
obj_ArmorInventory.inventory[5] = ini_read_real("savegame", "ainv5", 0);
obj_ArmorInventory.inventory[6] = ini_read_real("savegame", "ainv6", 0);
obj_ArmorInventory.inventory[7] = ini_read_real("savegame", "ainv7", 0);
obj_ArmorInventory.inventory[8] = ini_read_real("savegame", "ainv8", 0);
obj_ArmorInventory.inventory[9] = ini_read_real("savegame", "ainv9", 0);
obj_ArmorInventory.inventory[10] = ini_read_real("savegame", "ainv10", 0);
obj_ArmorInventory.inventory[11] = ini_read_real("savegame", "ainv11", 0);
//Spell 1 inventory
obj_SpellInventory.inventory[0] = ini_read_real("savegame", "s1inv0", 0);
obj_SpellInventory.inventory[1] = ini_read_real("savegame", "s1inv1", 0);
obj_SpellInventory.inventory[2] = ini_read_real("savegame", "s1inv2", 0);
obj_SpellInventory.inventory[3] = ini_read_real("savegame", "s1inv3", 0);
obj_SpellInventory.inventory[4] = ini_read_real("savegame", "s1inv4", 0);
obj_SpellInventory.inventory[5] = ini_read_real("savegame", "s1inv5", 0);
obj_SpellInventory.inventory[6] = ini_read_real("savegame", "s1inv6", 0);
obj_SpellInventory.inventory[7] = ini_read_real("savegame", "s1inv7", 0);
obj_SpellInventory.inventory[8] = ini_read_real("savegame", "s1inv8", 0);
obj_SpellInventory.inventory[9] = ini_read_real("savegame", "s1inv9", 0);
obj_SpellInventory.inventory[10] = ini_read_real("savegame", "s1inv10", 0);
obj_SpellInventory.inventory[11] = ini_read_real("savegame", "s1inv11", 0);
//Summon 2 inventory
obj_SummonInventory.inventory[0] = ini_read_real("savegame", "s2inv0", 0);
obj_SummonInventory.inventory[1] = ini_read_real("savegame", "s2inv1", 0);
obj_SummonInventory.inventory[2] = ini_read_real("savegame", "s2inv2", 0);
obj_SummonInventory.inventory[3] = ini_read_real("savegame", "s2inv3", 0);
obj_SummonInventory.inventory[4] = ini_read_real("savegame", "s2inv4", 0);
obj_SummonInventory.inventory[5] = ini_read_real("savegame", "s2inv5", 0);
obj_SummonInventory.inventory[6] = ini_read_real("savegame", "s2inv6", 0);
obj_SummonInventory.inventory[7] = ini_read_real("savegame", "s2inv7", 0);
obj_SummonInventory.inventory[8] = ini_read_real("savegame", "s2inv8", 0);
obj_SummonInventory.inventory[9] = ini_read_real("savegame", "s2inv9", 0);
obj_SummonInventory.inventory[10] = ini_read_real("savegame", "s2inv10", 0);
obj_SummonInventory.inventory[11] = ini_read_real("savegame", "s2inv11", 0);

room_goto(RGT);
ini_close();

}