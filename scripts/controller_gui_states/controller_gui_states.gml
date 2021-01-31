// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function main_menu_gui(){
	draw_set_colour(c_white);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	draw_text(640, 360, "Press Enter to Start");
}

function top_down_gui(){
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(50, 50, "Controls: - Arrows or WASD to move \n \t - E to interact \n Day: " + string(global.current_game_day));
}

function day_start_gui() {
	draw_sprite(spr_tag, 0, 0, 0);
	draw_set_color(c_black);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	var text = "Found Items: x/" + string(ds_list_size(global.found_items))
	draw_text(200, 120, text);
	var xx = 87;
	var max_item = ds_list_size(global.found_items);
	if (max_item > 5) {
		max_item = 5;
	}		
	for (var i = 0; i < max_item; i++) {
		var yy = 144 + 64 * i;
		var item_i = last_shown_item - 4 + i;
		var item = global.found_items[| item_i];
		var item_sprite = item[e_item_stats.item_sprite];
		var item_color = item[e_item_stats.item_color_id];
		draw_sprite(item_sprite, item_color, xx, yy);
		//draw item text
		draw_set_halign(fa_left);
		var item_color_name = item[e_item_stats.item_color];
		var item_name = item[e_item_stats.item_name];
		var item_detail = item[e_item_stats.item_details]
		var item_text = item_color_name + " " + item_name + " " + item_detail;
		draw_text(xx + 70, yy + 32, item_text);
	}
	var select_xx = xx - 70;
	var selected_i = current_selected_item;
	if (selected_i > 4) {
		selected_i = 4;
	}
	var select_yy = 144 + 64 * selected_i;
	draw_sprite(spr_selection, 0, select_xx, select_yy);
	;
	
}

function game_over_gui() {
	draw_set_colour(c_white);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	draw_text(640, 360, "You are fired!\n \n\n Press Enter to go back to start screen");
}