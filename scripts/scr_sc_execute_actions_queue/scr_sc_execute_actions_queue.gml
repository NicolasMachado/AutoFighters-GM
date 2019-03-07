// Called by obj_timer steps
// Here, we play all the actions one by one and remove them from the queue once done
// Each entry can be a list of multiple actions to be played at the same time

if (ds_queue_size(actions_queue) > 0) {
	// loop to execute multiple actions simultaneously if necessary
	if (ds_list_size(ds_queue_head(actions_queue)) > 0) {
		// execute all the scripts in the list simultaneously
		for (var i = 0; i < ds_list_size(ds_queue_head(actions_queue)); i++) {
			script_execute(ds_list_find_value(ds_queue_head(actions_queue), i));
		}
		
		// Cleanup of the list if requested (addition, removal of actions)
		
	}
	
	if (ds_list_size(ds_queue_head(actions_queue)) == 0) {
		ds_queue_dequeue(ds_queue_head(actions_queue));
		exit;
	}
}

// Once the actions queue is empty, we proceed to the next step
current_step++;