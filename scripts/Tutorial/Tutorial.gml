// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function TutorialStartNPCSave(){
ini_open("savedata.ini");

//So that he reacts after you die.
ini_write_real("savegame","TutorialNPC", 1);

ini_close();
}

function TutorialStartNPCLoad(){
ini_open("savedata.ini");

oStart_NPC.CurrentText = ini_read_real("savegame", "TutorialNPC", 0);

ini_close();

}

function TutorialBrotherNPCSave(){
	ini_write_real("savegame","TutorialBrotherNPC", oBrother_NPC.CurrentText);
}

function TutorialBrotherNPCLoad(){
ini_open("savedata.ini");

oBrother_NPC.CurrentText = ini_read_real("savegame", "TutorialBrotherNPC", 0);

ini_close();

}
