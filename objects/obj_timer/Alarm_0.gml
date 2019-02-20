/// @description tick frame
if (is_running) {
	time++;
	alarm[0] = tick_rate;
	
	with(obj_fighter) {
		if (!is_dead) {
			scr_tick_character();
		}
	}
	
	with(obj_enemy) {
		if (!is_dead) {
			scr_tick_character();
		}
	}
}