// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function show_satisfaction(){
	var healthbar_x = window_get_width() - 250;
	var healthbar_x_end = healthbar_x + 200;
	var healthbar_y = 50;
	var healthbar_y_end = 75;
	draw_text(healthbar_x, 25, "Satisfaction");
	draw_healthbar(healthbar_x, healthbar_y, healthbar_x_end, healthbar_y_end, global.satisfaction, c_black, c_red, c_green, 0, false, true)
	
}