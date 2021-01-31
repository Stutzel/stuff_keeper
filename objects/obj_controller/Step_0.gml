/// @description Insert description here
// You can write your code in this editor

input_hadler();

if (global.game_state == e_game_states.state_main_menu) {
	state_main_menu();
} else if (global.game_state == e_game_states.state_in_between_days) {
	state_in_between_days();
} else if (global.game_state == e_game_states.state_day_start) {
	state_day_start();
} else if (global.game_state == e_game_states.state_pause_menu) {
	state_pause_menu();
} else if (global.game_state == e_game_states.state_top_down) {
	state_top_down();
	if (!audio_is_playing(snd_gameplay_2_start) && !audio_is_playing(snd_gameplay_2_loop)) {
		audio_play_sound(snd_gameplay_2_loop, 10, true);
	}
} else if (global.game_state == e_game_states.state_drawer) {
	state_drawer();
}