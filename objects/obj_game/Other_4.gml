if(room == rm_game_2){
	spawn_off_camera(obj_asteroid_mine,10);
	if(audio_is_playing(msc_song)){
		audio_stop_sound(msc_song)
	}
	audio_play_sound(msc_song, 2, true)
	
	alarm[0] = 60;
}

if lives = 0{
	if(audio_is_playing(msc_song)){
		audio_stop_sound(msc_song)
		audio_play_sound(snd_lose, 1, false)
	}
}
if score = 1000{
	if(audio_is_playing(msc_song)){
		audio_stop_sound(msc_song)
		audio_play_sound(snd_win, 1, false)
	}
}