/// @description Animation dmg/heal

// Damage animation
if (damage_animation) {
	sprite_color = make_color_rgb(255, 0, 0);
	damage_animation_running = true;
	damage_animation = false;
}

if (damage_animation_running) {
	var green = color_get_green(sprite_color);
	var blue = color_get_blue(sprite_color);
	sprite_color = make_color_rgb(255, green+color_change_speed, blue+color_change_speed);
	x = original_x + irandom_range(-5, 5);
	y = original_y + irandom_range(-3, 3);
	if (green >= 255 - color_change_speed) {
		damage_animation_running = false;
		sprite_color = c_white;
		obj_timer.current_step++;
		// check if dead
		if (stats[CURRENT_HP] <= 0) {
			is_dead = true;
			die_animation = true;
		}
	}
}

// Heal animation
if (heal_animation) {
	sprite_color = make_color_rgb(0, 255, 0);
	heal_animation_running = true;
	heal_animation = false;
}

if (heal_animation_running) {
	var red = color_get_red(sprite_color);
	var blue = color_get_blue(sprite_color);
	sprite_color = make_color_rgb(red+color_change_speed, 255, blue+color_change_speed);
	if (blue >= 255 - color_change_speed) {
		heal_animation_running = false;
		sprite_color = c_white;
		obj_timer.current_step++;
	}
}

// move to target 
if (moving_to_target) {
	var target = obj_timer.actor_target;
	var face_position = target.type == "enemy" ? -50 : 50;
	if (point_distance(x, y, target.x + face_position, target.y) > 20) {
		move_towards_point(target.x + face_position, target.y, 15);
	} else {
		speed = 0;
		moving_to_target = false;
		obj_timer.current_step++;
	}
}

// move back to place
if (moving_back_to_place) {
	if (point_distance(x, y, original_x, original_y) > 20) {
		move_towards_point(original_x, original_y, 15);
	} else {
		speed = 0;
		moving_back_to_place = false;
		obj_timer.current_step++;
	}
}

// if dying
if (die_animation) {
	stats[CURRENT_AP] = 0;
	sprite_alpha -= 0.01;
	if (sprite_alpha <= 0) {
		die_animation = false;
	}
}