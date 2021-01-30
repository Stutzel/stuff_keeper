// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function input_hadler(){
	// Movement input
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
	key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

	//Other input
	key_enter = keyboard_check_pressed(vk_enter);
	key_interact = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("E"));
	key_cancel = keyboard_check_pressed(ord("Q"));
	key_menu = keyboard_check_pressed(vk_escape);
}