instance_destroy();
audio_stop_sound(OKA3);

repeat(120)
{
	instance_create(x + 135, y+83 , obj_SoulPointsHit);
}
instance_create(x + 135,y + 45,obj_Collect_Tornado);