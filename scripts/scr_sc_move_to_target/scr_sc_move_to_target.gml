/// Move to target

// No target ?
if (!actor_target) {
	scr_sc_end_turn();
	exit;
}

// Move
if (actor != actor_target && ds_map_find_value(actor_spell, "move_to_target")) {
	actor.moving_to_target = true;
} else {
	current_step++;
}
	
current_step++;