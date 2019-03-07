/// @description Draw time

draw_set_color("000000");
draw_set_halign(fa_center);
draw_text(room_width/2, 0, time);
if (current_step > -1) {
	 draw_text(room_width/2, 50, steps[current_step]);
 }
draw_text(room_width/2, 25, "current step : " + string(current_step));
draw_text(room_width/2, 75, "animations running : " + string(animations_currently_running));