/// @description Insert description here
// You can write your code in this editor


if ( global.game_state == e_game_states.state_main_menu) {
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	draw_text(640, 360, "Press Enter to Start");
}else if (global.game_state == e_game_states.state_top_down) {
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(50, 50, "Controls: - Arrows or WASD to move \n \t - E to interact");
}