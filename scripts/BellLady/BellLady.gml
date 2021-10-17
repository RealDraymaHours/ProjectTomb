function LoadBellLady(){
ini_open("savedata.ini");	
	
obj_SaveLady.BellLadyState = ini_read_real("BellLady", "State", 0);

ini_close();
}

function SaveBellLady(State){
	
ini_open("savedata.ini");	

ini_write_real("BellLady", "State", State);

ini_close();
}