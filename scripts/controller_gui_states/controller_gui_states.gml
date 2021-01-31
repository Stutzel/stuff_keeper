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