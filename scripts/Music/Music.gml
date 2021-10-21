// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PickSong(Place){
MP = mSilence;

switch(Place)
{
	case("None"):
		MP = mSilence;
	break;
	case("Save"):
		MusicPlaying = mSavePoint;
	break;
	case("Tomb"):
		MP = mTombPlaceholder;
	break;
	
}
return MP;
}