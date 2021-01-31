/// @description Insert description here
// You can write your code in this editor

if (global.game_state == e_game_states.state_top_down) {
	var size = ds_list_size(global.current_customer_line);
	for (var i = 0; i < size; i++) {
		var xx = 1240;
		var yy = 500 + 150 * i;
		draw_sprite(spr_customer, -1, xx, yy);
	}
}