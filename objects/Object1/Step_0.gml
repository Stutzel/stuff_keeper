//Input Detection

// Movement input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

//Other input
key_interact = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("E"));


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