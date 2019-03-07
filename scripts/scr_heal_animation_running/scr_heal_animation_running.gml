/// Heal animation running

var red = color_get_red(sprite_color);
var blue = color_get_blue(sprite_color);
sprite_color = make_color_rgb(red+color_change_speed, 255, blue+color_change_speed);
if (blue >= 255 - color_change_speed) {
	heal_animation_running = false;
	sprite_color = c_white;
	obj_timer.animations_currently_running--;
}