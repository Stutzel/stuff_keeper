/// @description Insert description here
// You can write your code in this editor


if (global.game_state == e_game_states.state_top_down) {
	draw_healthbar(x - 50, y, x + 50, y +25, patience, c_black, c_red, c_green, 0, false, false);
	if (ds_list_size(global.current_customer_line) > 0) {
		var customer = global.current_customer_line[| 0];
		var cust_item = customer[e_customer_stats.customer_item];
		var text = "I lost a " + cust_item[1] + "\n" + cust_item[0] + "\n" + cust_item[2] + ",\n" + string(cust_item[3] - 1) + " days ago.";
		var xx = 1240 - 400;
		var yy = 500;
		draw_set_halign(fa_middle);
		draw_set_valign(fa_center)
		draw_text(xx, yy, text); 
	}
}

