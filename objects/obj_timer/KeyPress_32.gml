/// @description Activation du timer

if (is_running) {
	is_running = false;
} else {
	is_running = true;
	alarm[0] = tick_rate;
}
