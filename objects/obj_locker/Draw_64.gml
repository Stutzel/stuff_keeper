/// @description Insert description here
// You can write your code in this editor


if (global.game_state == e_game_states.state_drawer) {
	if (is_active) {
		draw_set_alpha(0.5);
		draw_rectangle_color(0, 0, view_get_wport(view_camera[0]), view_get_hport(view_camera[0]), c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);
		var xx = view_get_wport(view_camera[0])/2;
		var yy = view_get_hport(view_camera[0])/2;
		draw_sprite(spr_drawer, 0, xx, yy);
		for (var i = 0; i < 4; i++) {
				if (contents[| i] != noone) {
					var item = contents[| i];
					draw_sprite(item[e_item_stats.item_sprite], item[e_item_stats.item_color_id], xx - 32 , 130 + i * 146)
			}
		}
		var selection_xx = xx - 270;
		var selection_yy = 130 + selection * 146;
		draw_sprite(spr_selection, 0, selection_xx, selection_yy);
	}
} else if (global.game_state == e_game_states.stae_day_start_drawer) {
	if (is_active) {
		draw_set_alpha(0.5);
		draw_rectangle_color(0, 0, view_get_wport(view_camera[0]), view_get_hport(view_camera[0]), c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);
		var xx = view_get_wport(view_camera[0])/2;
		var yy = view_get_hport(view_camera[0])/2;
		draw_sprite(spr_drawer, 0, xx, yy);
		for (var i = 0; i < 4; i++) {
				if (contents[| i] != noone) {
					var item = contents[| i];
					draw_sprite(item[e_item_stats.item_sprite], item[e_item_stats.item_color_id], xx -32 , 130 + i * 146)
			}
		}
		var selection_xx = xx - 270;
		var selection_yy = 130 + selection * 146;
		draw_sprite(spr_selection, 0, selection_xx, selection_yy);
	}
}