// Called by obj_timer steps
// Here, we play all the actions one by one and remove them from the queue once done
// Each entry can be an array of multiple actions to be played at the same time
// animations_currently_running is incremented by 1 for each action
// animations_currently_running is decremented by 1 once an action is done

if (ds_queue_size(actions_queue) > 0) {
	executing_queue_head = true;
	script_execute(ds_queue_head(actions_queue));
	if (animations_currently_running == 0 && !executing_queue_head) {
		ds_queue_dequeue(actions_queue);
	}
} else {
	// Once the actions queue is empty, we proceed to the next step
	current_step++;
}