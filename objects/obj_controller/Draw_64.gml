/// @description Insert description here
// You can write your code in this editor

draw_text(50, 50, "Controls: - Arrows or WASD to move \n \t - E to interact");

if (global.game_state == e_game_states.state_drawer) {
	draw_sprite(spr_drawer, 0, 50, 50);
}