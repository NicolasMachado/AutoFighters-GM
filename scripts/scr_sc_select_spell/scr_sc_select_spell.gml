/// select spell - called by Timer object
var spell_id;
var actor_spells = actor.spells;
var head_array = [];

for (var i = 0; i < array_length_1d(actor_spells); i++) {
	// if conditions met
	spell_id = actor_spells[irandom_range(0, array_length_1d(actor_spells)-1)];
}

//spell_id = actor.stats[CURRENT_MP] < 20 ? 0 : 1; // debug à faire = check si assez de mana pour caster

actor_spell = obj_controller.spells_codex[spell_id];
// We copy the action queue from the spell to the timer action queue to be executed
ds_queue_clear(actions_queue);
// this is a temporary copy of the spell queue solely here to copy actions from array to list in action_queue
ds_queue_copy(temp_spell_queue, ds_map_find_value(actor_spell, "actions_queue"));

// copy actions from array codex to list in every action queue action
while (ds_queue_size(temp_spell_queue) > 0) {
	head_array = ds_queue_head(temp_spell_queue);
	var head_list = ds_list_create();
	for (var i = 0; i < array_length_1d(head_array); i++) {
		ds_list_add(head_list, head_array[i]);
	}
	ds_queue_enqueue(actions_queue, head_list);
	ds_queue_dequeue(temp_spell_queue);
}

//ds_queue_copy(actions_queue, codex_spell_queue);

	
current_step++;