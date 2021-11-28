s_emit = audio_emitter_create();

audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(s_emit,x,y,0);
audio_emitter_falloff(s_emit, audio_start_drop,audio_max_distance,1);

state = 0;
