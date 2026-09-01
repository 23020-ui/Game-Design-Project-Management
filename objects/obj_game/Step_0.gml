if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start_2:
			room_goto(rm_game_2);
			break;
			
		case rm_win_2:
		case rm_gameover_2:
			game_restart();
			break;
	}
}

if(room == rm_game_2){
	if(score >= 10000){
		room_goto(rm_win_2);
	}

	if(lives <= 0){
		room_goto(rm_gameover_2);
	}
}