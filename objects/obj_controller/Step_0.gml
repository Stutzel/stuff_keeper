/// @description Insert description here
// You can write your code in this editor

input_hadler();

if (global.game_state == e_game_states.state_menu) {
	if (key_menu) {
		global.game_state = e_game_states.state_top_down;
	}
} else if (global.game_state == e_game_states.state_top_down) {
	if (key_menu) {
		global.game_state = e_game_states.state_menu;
	}
} else if (global.game_state == e_game_states.state_drawer) {
	if (key_cancel || key_menu) {
		global.game_state = e_game_states.state_top_down;
	}
}