// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function state_in_between_days(){
	global.current_game_day += 1;
	var n_found_items = 3 * global.current_game_day;
	for (var i = 0; i < n_found_items; i++) {
		var item = generate_new_item();
		global.found_items[|i] = item;
	}
	global.game_state = e_game_states.state_day_start;
}