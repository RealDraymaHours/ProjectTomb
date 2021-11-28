/// @description summon sword and scream
audio_play_sound(Scream1,10,false);

sprite_index = spr_LKA_Scream;
instance_create(obj_LKA.x - 43, obj_LKA.y - 84, obj_LKA_Sword);
alarm[2] = 240;

Scream = true;