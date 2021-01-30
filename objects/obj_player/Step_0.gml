//Input Detection

input_hadler();

if (global.game_state == e_game_states.state_top_down) {

	// hadles input
	h_movement = key_right - key_left;
	v_movement = key_down - key_up
	input_direction = point_direction(0, 0, h_movement, v_movement);
	input_magnitude = (h_movement != 0) || (v_movement != 0);

	//change character facing
	if (input_magnitude) {
		image_angle = input_direction;
	}

	//movement
	h_speed = lengthdir_x(input_magnitude * max_speed, input_direction);
	v_speed = lengthdir_y(input_magnitude * max_speed, input_direction);

	//collision tracking
	if (place_meeting(x + h_speed, y + v_speed, obj_obstacle)) {
		while (!place_meeting(x + sign(h_speed), y + sign(v_speed), obj_obstacle)) {
			x += sign(h_speed);
			y += sign(v_speed);
		}
		h_speed = 0;
		v_speed = 0;
	}

	x += h_speed;
	y += v_speed;

	//check facingfor interaction
	interact_x = lengthdir_x(interact_range, image_angle);
	interact_y = lengthdir_y(interact_range, image_angle);

	if (place_meeting(x + interact_x, y + interact_y, obj_interactable)) {
		if (key_interact) {
			global.game_state = e_game_states.state_drawer;
		}
	}
}