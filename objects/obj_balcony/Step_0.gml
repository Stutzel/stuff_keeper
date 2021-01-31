/// @description Insert description here
// You can write your code in this editor

if (global.game_state == e_game_states.state_top_down) {
	patience -= global.current_game_day * 0.05;
	if (patience <= 0) {
		global.satisfaction -= global.current_game_day ;
		patience = 100;
		ds_list_delete(global.current_customer_line, 0);
		if (ds_list_size(global.current_customer_line > 0)){
			var customer = global.current_customer_line[| 0];
			global.current_customer_id = customer[e_customer_stats.customer_id];
		}
	}
}