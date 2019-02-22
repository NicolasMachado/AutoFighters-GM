/// @description Animation dmg/heal

// Damage animation
if (damage_animation_trigger) {
	scr_damage_animation_trigger();
}

if (damage_animation_running) {
	scr_damage_animation_running();
}

// Heal animation
if (heal_animation_trigger) {
	scr_heal_animation_trigger();
}

if (heal_animation_running) {
	scr_heal_animation_running();
}

// if dying
if (death_animation_trigger) {
	scr_death_animation_trigger();
}

if (death_animation_running) {
	scr_death_animation_running();
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