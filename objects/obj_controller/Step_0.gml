/// @description Insert description here
// You can write your code in this editor

input_hadler();

if (global.game_state == e_game_states.state_main_menu) {
	state_main_menu();
} else if (global.game_state == e_game_states.state_in_between_days) {
	state_in_between_days();
} else if (global.game_state == e_game_states.state_day_start) {
	state_day_start();
	if (!audio_is_playing(current_start) && !audio_is_playing(current_loop)) {
		audio_play_sound(current_loop, 10, true);
	}
} else if (global.game_state == e_game_states.stae_day_start_drawer) {
	state_day_start_drawer();
	if (!audio_is_playing(current_start) && !audio_is_playing(current_loop)) {
		audio_play_sound(current_loop, 10, true);
	}
}else if (global.game_state == e_game_states.state_day_end) {
	audio_stop_all();
	var audio_i = global.current_game_day mod 2;
	current_start = soundtrack_start[audio_i];
	current_loop = soundtrack_loop[audio_i];
	state_day_end();
} else if (global.game_state == e_game_states.state_pause_menu) {
	state_pause_menu();
	if (!audio_is_playing(current_start) && !audio_is_playing(current_loop)) {
		audio_play_sound(current_loop, 10, true);
	}
} else if (global.game_state == e_game_states.state_top_down) {
	state_top_down();
	if (!audio_is_playing(current_start) && !audio_is_playing(current_loop)) {
		audio_play_sound(current_loop, 10, true);
	}
	
	if keyboard_check_pressed(vk_control) {
		room_goto(rm_game_over);
		audio_stop_all();
		audio_play_sound(snd_game_over, 10, false);
		global.game_state = e_game_states.state_game_over;
	}
} else if (global.game_state == e_game_states.state_drawer) {
	state_drawer();
	if (!audio_is_playing(current_start) && !audio_is_playing(current_loop)) {
		audio_play_sound(current_loop, 10, true);
	}
} else if (global.game_state == e_game_states.state_game_over) {
	state_game_over();
}