
function Save(){
ini_open("savedata.ini");

//Room and position
ini_write_real("savegame","x", oPlayer.x);
ini_write_real("savegame","y", oPlayer.y);
ini_write_real("savegame","room", room);

//Equiped
ini_write_real("savegame", "weapon", global.LeftItem);
ini_write_real("savegame", "firstspell", global.Spell1);
ini_write_real("savegame", "secondspell", global.Spell2);
ini_write_string("savegame", "armor", global.Armor);

//Visuals
ini_write_real("savegame", "icon1", global.LeftIcon);
ini_write_real("savegame", "icon2", global.FirstSpellIcon);
ini_write_real("savegame", "icon3", global.SecondSpellIcon);
ini_write_real("savegame", "icon4", global.RightIcon);

//Inventory
//Weapon Inventory
ini_write_real("savegame", "winv0", obj_Inventory.inventory[0]);
ini_write_real("savegame", "winv1", obj_Inventory.inventory[1]);
ini_write_real("savegame", "winv2", obj_Inventory.inventory[2]);
ini_write_real("savegame", "winv3", obj_Inventory.inventory[3]);
ini_write_real("savegame", "winv4", obj_Inventory.inventory[4]);
ini_write_real("savegame", "winv5", obj_Inventory.inventory[5]);
ini_write_real("savegame", "winv6", obj_Inventory.inventory[6]);
ini_write_real("savegame", "winv7", obj_Inventory.inventory[7]);
ini_write_real("savegame", "winv8", obj_Inventory.inventory[8]);
ini_write_real("savegame", "winv9", obj_Inventory.inventory[9]);
ini_write_real("savegame", "winv10", obj_Inventory.inventory[10]);
ini_write_real("savegame", "winv11", obj_Inventory.inventory[11]);
//Armor Inventory
ini_write_real("savegame", "ainv0", obj_ArmorInventory.inventory[0]);
ini_write_real("savegame", "ainv1", obj_ArmorInventory.inventory[1]);
ini_write_real("savegame", "ainv2", obj_ArmorInventory.inventory[2]);
ini_write_real("savegame", "ainv3", obj_ArmorInventory.inventory[3]);
ini_write_real("savegame", "ainv4", obj_ArmorInventory.inventory[4]);
ini_write_real("savegame", "ainv5", obj_ArmorInventory.inventory[5]);
ini_write_real("savegame", "ainv6", obj_ArmorInventory.inventory[6]);
ini_write_real("savegame", "ainv7", obj_ArmorInventory.inventory[7]);
ini_write_real("savegame", "ainv8", obj_ArmorInventory.inventory[8]);
ini_write_real("savegame", "ainv9", obj_ArmorInventory.inventory[9]);
ini_write_real("savegame", "ainv10", obj_ArmorInventory.inventory[10]);
ini_write_real("savegame", "ainv11", obj_ArmorInventory.inventory[11]);
//Spell 1 inventory
ini_write_real("savegame", "s1inv0", obj_SpellInventory.inventory[0]);
ini_write_real("savegame", "s1inv1", obj_SpellInventory.inventory[1]);
ini_write_real("savegame", "s1inv2", obj_SpellInventory.inventory[2]);
ini_write_real("savegame", "s1inv3", obj_SpellInventory.inventory[3]);
ini_write_real("savegame", "s1inv4", obj_SpellInventory.inventory[4]);
ini_write_real("savegame", "s1inv5", obj_SpellInventory.inventory[5]);
ini_write_real("savegame", "s1inv6", obj_SpellInventory.inventory[6]);
ini_write_real("savegame", "s1inv7", obj_SpellInventory.inventory[7]);
ini_write_real("savegame", "s1inv8", obj_SpellInventory.inventory[8]);
ini_write_real("savegame", "s1inv9", obj_SpellInventory.inventory[9]);
ini_write_real("savegame", "s1inv10", obj_SpellInventory.inventory[10]);
ini_write_real("savegame", "s1inv11", obj_SpellInventory.inventory[11]);
//Summon 2 inventory
ini_write_real("savegame", "s2inv0", obj_SummonInventory.inventory[0]);
ini_write_real("savegame", "s2inv1", obj_SummonInventory.inventory[1]);
ini_write_real("savegame", "s2inv2", obj_SummonInventory.inventory[2]);
ini_write_real("savegame", "s2inv3", obj_SummonInventory.inventory[3]);
ini_write_real("savegame", "s2inv4", obj_SummonInventory.inventory[4]);
ini_write_real("savegame", "s2inv5", obj_SummonInventory.inventory[5]);
ini_write_real("savegame", "s2inv6", obj_SummonInventory.inventory[6]);
ini_write_real("savegame", "s2inv7", obj_SummonInventory.inventory[7]);
ini_write_real("savegame", "s2inv8", obj_SummonInventory.inventory[8]);
ini_write_real("savegame", "s2inv9", obj_SummonInventory.inventory[9]);
ini_write_real("savegame", "s2inv10", obj_SummonInventory.inventory[10]);
ini_write_real("savegame", "s2inv11", obj_SummonInventory.inventory[11]);

ini_close();
}