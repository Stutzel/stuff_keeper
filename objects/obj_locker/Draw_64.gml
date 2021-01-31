/// @description Insert description here
// You can write your code in this editor


if (global.game_state == e_game_states.state_drawer) {
	if (is_active) {
		draw_sprite(spr_drawer, 0, 50, 50);
		for (var i = 0; i < 4; i++) {
				if (contents[| i] != noone) {
					var item = contents[| i];
					draw_sprite(item[e_item_stats.item_sprite], item[e_item_stats.item_color_id], 100 , 100 + i * 64)
			}
		}
	}
}