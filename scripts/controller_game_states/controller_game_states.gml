// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function state_day_end(){
	global.game_state = e_game_states.state_in_between_days
}

function state_day_start(){
	//Do Stud of beggining of day here
	if (ds_list_size(global.found_items) <= 0 || keyboard_check_pressed(vk_control)) { 
		global.game_state = e_game_states.state_top_down;
	}
}

function state_drawer(){
	if (key_cancel || key_menu) {
		global.game_state = e_game_states.state_top_down;
	}
}

function state_game_over(){
	if (key_cancel || key_enter) {
		audio_stop_all();
		audio_play_sound(snd_title_screen, 10, true);
		room_goto(rm_main_menu);
		global.game_state = e_game_states.state_main_menu;
	}
}

function state_in_between_days(){
	global.current_game_day += 1;
	var n_found_items = 3 * global.current_game_day;
	if (n_found_items > 16) {
		n_found_items = 16;
	}
	for (var i = 0; i < n_found_items; i++) {
		var item = generate_new_item(global.current_game_day);
		global.found_items[|i] = item;
	}
	current_customer_line = form_customer_line(current_customer_line);
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