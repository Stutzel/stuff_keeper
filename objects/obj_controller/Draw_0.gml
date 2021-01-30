/// @description Insert description here
// You can write your code in this editor


draw_sprite(test_item[e_item_stats.item_sprite], test_item[e_item_stats.item_color_id], 150,150);

text = "This is a " + test_item[e_item_stats.item_color] + " " + test_item[e_item_stats.item_name] + " " + test_item[e_item_stats.item_details];

draw_text(150,250, text);