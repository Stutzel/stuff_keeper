/// @description Insert description here
// You can write your code in this editor


if (global.game_state == e_game_states.state_drawer) {
	if (is_active) {
		var xx = view_get_wport(view_camera[0])/2;
		var yy = view_get_hport(view_camera[0])/2;
		draw_sprite(spr_drawer, 0, xx, yy);
		for (var i = 0; i < 4; i++) {
				if (contents[| i] != noone) {
					var item = contents[| i];
					draw_sprite(item[e_item_stats.item_sprite], item[e_item_stats.item_color_id], 100 , 100 + i * 64)
			}
		}
	}
}