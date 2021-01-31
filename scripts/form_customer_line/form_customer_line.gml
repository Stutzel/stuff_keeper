// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function form_customer_line(customer_line){
	ds_list_clear(customer_line);
	//var n_total = ds_list_size(global.customers);
	for (var i = 0; i < ds_list_size(global.customers); i++) {
		var customer = global.customers[| i];
		var is_returning = customer[e_customer_stats.customer_returns_in];
		
		if (is_returning == global.current_game_day) {
			ds_list_add(customer_line, customer);
			ds_list_delete(global.customers, i);
			i--;
		}
	}
	return customer_line;
}