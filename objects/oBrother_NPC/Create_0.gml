/// @description Variables

CurrentText = 0;
CurrentPage = 0;
npcX = x - 135;
npcY = y - 100;

NPC = "Brother";

TutorialBrotherNPCLoad();

// 0 = meetnotdone, 1=metnotdoneex, 2 = meetdone, 3 = questdone, 4 = newlocation , 5 = meetdone

switch(CurrentText)
{
	case(0):
		for (var i = 0, iLen = array_length_1d(obj_Inventory.inventory); i < iLen; i++) {
	    if (obj_Inventory.inventory[i] == 7) {CurrentText = 2; break;}}

	break;
	case(1):
		for (var i = 0, iLen = array_length_1d(obj_Inventory.inventory); i < iLen; i++) {
		if (obj_Inventory.inventory[i] == 7) {CurrentText = 5; break;}}
	break;
}


if ((room = Rm_Tutorial_ZweiHander) && (CurrentText != 4))
{
	instance_destroy();	
}
else if ((room != Rm_Tutorial_ZweiHander) && (CurrentText == 4))
{
	instance_destroy();
}
else if((room = Rm_Tutorial_ZweiHander) && (CurrentText == 4))
{
	sprite_index = sStartIdle;	
}



depth = 9;