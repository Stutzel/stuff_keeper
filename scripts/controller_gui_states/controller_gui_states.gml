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
	for (var i = 0; i < ds_list_size(global.found_items); i++) {
		var yy = 144 + 64 * i;
		var item = global.found_items[| i];
		var item_sprite = item[e_item_stats.item_sprite];
		var item_color = item[e_item_stats.item_color_id];
		draw_sprite(item_sprite, item_color, xx, yy);
	}
}

function game_over_gui() {
	draw_set_colour(c_white);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	draw_text(640, 360, "You are fired!\n \n\n Press Enter to go back to start screen");
}