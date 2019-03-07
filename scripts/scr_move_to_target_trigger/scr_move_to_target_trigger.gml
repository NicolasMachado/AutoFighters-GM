// movement to target trigger

move_to_target_trigger = false;
if (!move_to_target_running) {
	move_to_target_running = true;
	obj_timer.animations_currently_running++;
}