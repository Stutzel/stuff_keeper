//Input Detection

input_hadler();

if (global.game_state == e_game_states.state_top_down) {
	player_game_state_topdown();
	if (current_player_state == e_player_states.state_standing) {
		player_state_standing();
	} else if (current_player_state == e_player_states.state_walking) {
		player_state_walking();
	}
} else if(global.game_state == e_game_states.state_day_start) {
	
} else {
	player_state_standing();
}