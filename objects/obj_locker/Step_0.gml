/// @description Insert description here
// You can write your code in this editor


input_hadler();

if (global.game_state == e_game_states.state_drawer) {
	if (is_active) {
		if (key_cancel || key_menu) {
			is_active = false;
			selection = 0;
			global.game_state = e_game_states.state_top_down;;
		}
		if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
				selection--;
				if (selection < 0) {
					selection = 0;
				}
			} else if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
				selection++;
				if (selection >= 3) {
					selection = 3;
				}
			}
			if (key_interact) {
				var item = contents[| selection];
				if (item != noone) {
					global.held_item = item;
					contents[| selection] = noone;
					selection = 0;
					is_active = false;
					global.game_state = e_game_states.state_top_down;
				}
			}
	}
} else if (global.game_state == e_game_states.stae_day_start_drawer) {
	if (is_active) {
		if (key_cancel || key_menu) {
			is_active = false;
			selection = 0;
			global.game_state = e_game_states.state_day_start_top_down;
		}
		if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
				selection--;
				if (selection < 0) {
					selection = 0;
				}
			} else if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
				selection++;
				if (selection >= 3) {
					selection = 3;
				}
			}
			if (key_interact) {
				var item = global.held_item;
				contents[| selection] = item;
				global.held_item = noone;
				is_active = false;
				global.game_state = e_game_states.state_day_start;
			}
	}
}
