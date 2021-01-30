// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function top_down_gui(){
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(50, 50, "Controls: - Arrows or WASD to move \n \t - E to interact \n Day: " + string(global.current_game_day));
}