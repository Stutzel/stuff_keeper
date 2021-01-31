// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function state_day_end(){
	global.game_state = e_game_states.state_in_between_days
}

function state_day_start(){
	//Do Stud of beggining of day here
	global.game_state = e_game_states.state_top_down;
}

function state_drawer(){
	if (key_cancel || key_menu) {
		global.game_state = e_game_states.state_top_down;
	}
}

function state_game_over(){

}

function state_in_between_days(){
	global.current_game_day += 1;
	var n_found_items = 3 * global.current_game_day;
	for (var i = 0; i < n_found_items; i++) {
		var item = generate_new_item(global.current_game_day);
		global.found_items[|i] = item;
	}
	
	global.game_state = e_game_states.state_day_start;
}

function state_main_menu(){
	if (key_enter) {
		if (room == rm_main_menu) {
			room_goto(rm_gameplay_screen);
			audio_stop_sound(snd_title_screen);
			audio_play_sound(current_start,10, false);
			global.game_state = e_game_states.state_in_between_days;
		}
	}
}

function state_pause_menu(){
	if (key_menu) {
		global.game_state = e_game_states.state_top_down;
	}
}

function state_top_down(){
	if (key_menu) {
		global.game_state = e_game_states.state_pause_menu;
	}
}