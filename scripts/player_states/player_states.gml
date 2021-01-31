// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_standing(){
	sprite_index = spr_player_standing;
	image_speed = 0;
}

function player_state_walking() {
	sprite_index = spr_player_walking;
	image_speed = 1;
}