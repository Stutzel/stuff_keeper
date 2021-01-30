/// @description Create Items, game parameters and more
randomize();

var item_sprites = [spr_wallet, spr_cellphone, spr_keys, spr_lighter, spr_umbrella];

var item_names = ["wallet", "cellphone", "keys", "lighter", "umbrella"];

var item_colors = [["orange", "white", "red"], 
				   ["blue", "white", "black"], 
				   ["nothing attached", "keyring", "keychain"],
				   ["orange", "blue", "red"],
				   ["blue", "red", "black"]];
				   
var item_details = [["with no money", "with my documents", "with some money"],
				   ["with a cracked screen", "and it's brand new", ", it has a cute case"],
				   ["it has three keys", "it's just one key", "it has my car keys"],
				   ["it's a Bic lighter", "it's a Clipper lighter", "it's a Calico lighter"],
				   ["it has some stripes", "it has polkadots", "just the flat color"]];

for (var i = 0; i < e_item_types.last; i++) {
	
	var list = ds_list_create();
	list[| e_item_stats.item_sprite] = item_sprites[i];
	list[| e_item_stats.item_name] = item_names[i];
	list[| e_item_stats.item_color] = item_colors[i];
	list[| e_item_stats.item_details] = item_details[i];
	
	global.item_stats[| i] = list;
}

test_item = generate_new_item();