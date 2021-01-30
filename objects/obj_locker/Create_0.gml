/// @description Insert description here
// You can write your code in this editor

contents = ds_grid_create(3,3);

//initialize contents

for (var i = 0; i < 3; i++) {
	for (var j= 0; j < 3; j++) {
		var item = generate_new_item();
		contents[# i,j] = item;
	}
}

is_active = false;