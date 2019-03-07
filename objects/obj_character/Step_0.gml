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
if (move_to_target_trigger) {
	scr_move_to_target_trigger();
}
if (move_to_target_running) {
	scr_move_to_target_running();
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