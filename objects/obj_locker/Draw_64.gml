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
		
		var tag_xx = xx + 150;
		var tag_yy = 50;
		draw_sprite(spr_tag, 0, tag_xx, tag_yy);
		
		var item = contents[| selection];
		if (item != noone) {
			var item_color = item[e_item_stats.item_color];
			var item_name = item[e_item_stats.item_name];
			var item_details = item[e_item_stats.item_details];
			var item_days = global.current_game_day - item[e_item_stats.item_day_found];
			var text = item_color + "\n" + item_name + "\n" + item_details + "\n Found " + string(item_days) + " days ago";  
			draw_set_halign(fa_middle);
			draw_set_valign(fa_center);
			draw_text(xx + 350, yy, text);
		}
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
		
		var tag_xx = xx + 150;
		var tag_yy = 50;
		draw_sprite(spr_tag, 0, tag_xx, tag_yy);
		
		var item = contents[| selection];
		if (item != noone) {
			var item_color = item[e_item_stats.item_color];
			var item_name = item[e_item_stats.item_name];
			var item_details = item[e_item_stats.item_details];
			var item_days = global.current_game_day - item[e_item_stats.item_day_found];
			var text = item_color + "\n" + item_name + "\n" + item_details + "\n Found " + string(item_days) + " days ago";  
			draw_set_halign(fa_middle);
			draw_set_valign(fa_center);
			draw_text(xx + 350, yy, text);
		}
	}
}