// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function state_drawer(){
	if (key_cancel || key_menu) {
		global.game_state = e_game_states.state_top_down;
	}
}