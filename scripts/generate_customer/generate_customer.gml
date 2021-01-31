// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generate_customer(item_name, item_color, item_detail, item_entry_day){
	var given_name_i = irandom(99);
	var last_name_i = irandom(99);
	
	var given_name = global.names_list[# 0, given_name_i];
	var last_name = global.names_list[# 1, last_name_i];
	
	var name = given_name + " " + last_name;
	
	var customer_id = global.current_customer_id;
	global.current_customer_id += 1;
	
	var return_chance = irandom(100);
	
	if (return_chance <= 10) {
		var customer = [customer_id, name];
		return customer;
	} else {
		var returns_in = item_entry_day + irandom(15);
		var item = [item_name, item_color, item_detail, item_entry_day];
		var customer = [customer_id, name, spr_customer, returns_in, item];
		ds_list_add(global.customers, customer);
		return customer;
	}
}