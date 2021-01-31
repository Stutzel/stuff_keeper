/// @description Insert description here
// You can write your code in this editor


if ( global.game_state == e_game_states.state_main_menu) {
	main_menu_gui();
}else if (global.game_state == e_game_states.state_top_down) {
	top_down_gui()
	var customer = global.customers[| 0];
	var item = customer[e_customer_stats.customer_item];
	draw_text(50, 400, item);
}