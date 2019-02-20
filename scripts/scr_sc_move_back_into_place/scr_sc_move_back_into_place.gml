/// Return to original place
if (ds_map_find_value(actor_spell, "move_to_target")) {
	actor.moving_back_to_place = true;
} else {
	current_step++;
}
	
current_step++;