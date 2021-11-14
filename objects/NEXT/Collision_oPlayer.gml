/// @description Warp to room

room_goto(TargetRoom);
oPlayer.x = TargetX;
oPlayer.y = TargetY - (TargetY - oPlayer.y);