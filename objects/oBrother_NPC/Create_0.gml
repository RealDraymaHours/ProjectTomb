/// @description Variables

CurrentText = 0;
CurrentPage = 0;

TutorialBrotherNPCLoad();

if CurrentText = 1
{
for (var i = 0, iLen = array_length_1d(obj_Inventory.inventory); i < iLen; i++) {
   if (obj_ArmorInventory.inventory[i] == 7) {CurrentText = 2; break;}}
}
else
{
for (var i = 0, iLen = array_length_1d(obj_Inventory.inventory); i < iLen; i++) {
   if (obj_Inventory.inventory[i] == 7) {CurrentText = 5; break;}}
}


if CurrentText = 4
{
for (var i = 0, iLen = array_length_1d(obj_ArmorInventory.inventory); i < iLen; i++) {
   if (obj_ArmorInventory.inventory[i] == 5) {
       if room = Rm_Tutorial_HeyBrother
	   {
			instance_destroy();
	   }
       break;
	}
}
}

if ((room = Rm_Tutorial_ZweiHander) && (CurrentText != 4))
{
	sprite_index = sStartIdle;
	instance_destroy();
}

npcX = 3820;
npcY = 1475;

depth = 9;