if(audio_is_playing(MusicStopping))
{
	audio_stop_sound(MusicStopping);	
}


if (CloseToCheck)
{
	if !audio_is_playing(mSavePointFar)
	{
		audio_play_sound(mSavePointFar, 1, true);
		audio_sound_gain(mSavePointFar,0.1,1);
	}
	else
	{
		audio_sound_gain(mSavePointFar,0.1,1);
	}
}
else
{
	if MusicPlaying = mSavePoint
	{
		audio_sound_gain(mSavePointFar,1,1);
	}
	else
	{
		audio_stop_sound(mSavePointFar);
	}
}


if (!audio_is_playing(MusicPlaying))
{
	if ((!audio_is_playing(mSavePointFar)) && (MusicPlaying != mSavePoint))
	{
		audio_play_sound(MusicPlaying, 1, true);	
	}
}
