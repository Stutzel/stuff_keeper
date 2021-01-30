// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generate_new_item(){
	var item_type = irandom_range(0, e_item_types.last -1);
	var item_details = global.item_stats[| item_type];
	
	var item_sprite = item_details[| e_item_stats.item_sprite];
	var item_name = item_details[| e_item_stats.item_name];
	var colors = item_details[| e_item_stats.item_color];
	var color_i = irandom_range(0, 2);
	var color = colors[color_i];
	var details = item_details[| e_item_stats.item_details];
	var detail_i = irandom_range(0, 2);
	var detail = details[detail_i]
	var entry_day = 0;
	
	var new_item = [item_sprite, item_name, color, detail, color_i, entry_day];
	
	return new_item;
}