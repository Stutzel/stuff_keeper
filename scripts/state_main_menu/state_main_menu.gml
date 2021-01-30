// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function state_main_menu(){
	if (key_enter) {
		if (room == rm_main_menu) {
			room_goto(rm_gameplay_screen);
			global.game_state = e_game_states.state_in_between_days;
		}
	}
}