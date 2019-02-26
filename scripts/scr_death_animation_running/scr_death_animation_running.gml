/// Death animation running

sprite_alpha -= 0.01;
if (sprite_alpha <= 0) {
	death_animation_running = false;
	obj_timer.animations_currently_running--;
	obj_timer.executing_queue_head = false;
}