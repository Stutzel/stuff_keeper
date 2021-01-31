/// @description Insert description here
// You can write your code in this editor


if ( global.game_state == e_game_states.state_main_menu) {
	main_menu_gui();
} else if (global.game_state == e_game_states.state_day_start) {
	day_start_gui();
} else if (global.game_state == e_game_states.state_top_down) {
	top_down_gui();
	show_satisfaction();
} else if(global.game_state == e_game_states.state_game_over) {
	game_over_gui();
}