/// @description Insert description here
// You can write your code in this editor


if (global.game_state == e_game_states.state_drawer) {
	if (is_active) {
		draw_sprite(spr_drawer, 0, 50, 50);
		for (var i = 0; i < 3; i++) {
			for (var j = 0; j < 3; j++) {
				if (contents[# i,j] != noone) {
					var item = contents[# i,j];
					draw_sprite(item[e_item_stats.item_sprite], item[e_item_stats.item_color_id], 100 + i * 64, 100 + j * 64)
				}
			}
		}
	}
}