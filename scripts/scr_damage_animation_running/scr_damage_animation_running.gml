/// Damange animation running

var green = color_get_green(sprite_color);
var blue = color_get_blue(sprite_color);
sprite_color = make_color_rgb(255, green + color_change_speed, blue + color_change_speed);
x = original_x + irandom_range(-5, 5);
y = original_y + irandom_range(-3, 3);
if (green >= 255 - color_change_speed) {
	// animation ended
	damage_animation_running = false;
	sprite_color = c_white;
	obj_timer.animations_currently_running--;
	obj_timer.executing_queue_head = false;
	// check if dead
	if (stats[CURRENT_HP] <= 0) {
		is_dead = true;
		death_animation_trigger = true;
	}
}